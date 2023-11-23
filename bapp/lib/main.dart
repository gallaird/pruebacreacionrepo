import 'package:bapp3/botnav/juegos.dart';
import 'package:bapp3/botnav/tienda.dart';
import 'package:bapp3/botnav/home.dart';
import 'package:bapp3/social/conversaciones.dart';
import 'package:bapp3/social/grupos.dart';
import 'package:bapp3/social/amigos.dart';
import 'package:flutter/material.dart';
import 'package:bapp3/theme.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      //darkTheme: MyTheme.darkTheme(),
      home: const SplashScreen(), // Mostrar la pantalla de carga primero
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _currentIndex;

  // Agrega una variable para controlar si la pestaña "Chats" está activa

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    _currentIndex = 0; // Inicializa el índice en la pestaña "Amigos"
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/Perfil_01.png'), 
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deena1993',
                  style:GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xffB9D6EC),
                  ),
                ),
                Text(
                  'ausente',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color:const Color(0xffA5A7AA),
                    ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('Amigos', 0),
            _buildTab('Conversaciones', 1),
            _buildTab('Grupos', 2),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: MyTheme.lightTheme().colorScheme.secondary,
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Amigos(),
                Conversaciones(),
                Grupos(),
              ],
            ),
          ),
        ],
      ),


     floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agrega aquí la lógica para manejar el botón de mensaje
        },
        backgroundColor: MyTheme.lightTheme().colorScheme.tertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              45.0),
        ),
        child: const Icon(
          Icons.add, // Icono de mensaje
          color: Colors.white, // Color blanco
        ),
      ), // Cierra FloatingActionButton
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Posición en la esquina inferior derecha

  bottomNavigationBar: BottomNavigationBar( 
          
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
          _currentIndex = index;
        });
      },
           
    backgroundColor: MyTheme.lightTheme().colorScheme.primary, //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.group, color: Colors.white), // Icono blanco
              label: 'Social',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.smart_display, color: Colors.white), // Icono blanco
              label: 'Juegos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.white), // Icono blanco
              label: 'Tienda',
            ),
          ],
          selectedItemColor: Colors.white, // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados


        ),

    );
  }

  Widget _buildTab(String title, int index) {
    return Tab(
      child: Text(title),
    );
  }

}
