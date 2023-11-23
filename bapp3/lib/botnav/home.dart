import 'package:bapp3/social/conversaciones.dart';
import 'package:bapp3/social/grupos.dart';
import 'package:bapp3/social/amigos.dart';
import 'package:flutter/material.dart';
import 'package:bapp3/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // ignore: unused_field
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                color: MyTheme.lightTheme()
                    .colorScheme
                    .primary, // Color de fondo para la TabBar
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    _buildTab('Amigos', 0),
                    _buildTab('Conversaciones', 1),
                    _buildTab('Grupos', 2),
                  ],
                  labelColor: Colors.white,
                  unselectedLabelColor:
                      MyTheme.lightTheme().colorScheme.secondary,
                  labelStyle: GoogleFonts.roboto(
                    fontSize: 14,
                  ),
                  // Otros parámetros del tema según sea necesario
                ),
              ),
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
              borderRadius: BorderRadius.circular(45.0),
            ),
            child: const Icon(
              Icons.add, // Icono de mensaje
              color: Colors.white, // Color blanco
            ),
          ), // Cierra FloatingActionButton
          floatingActionButtonLocation: FloatingActionButtonLocation
              .endFloat, // Posición en la esquina inferior derecha
        ),
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    return Tab(
      child: Text(title),
    );
  }
}
