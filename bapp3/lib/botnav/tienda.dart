import 'package:flutter/material.dart';
import 'package:bapp3/theme.dart';
import 'package:google_fonts/google_fonts.dart';


class Tienda extends StatelessWidget {
  const Tienda({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: MyTheme.lightTheme().colorScheme.primary,

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard('Blizzard Arcade Collection', 'Coleccion de juegos clasicos de Blizzard', 'assets/t1.jpeg'),
                buildCard('Overwatch 2', 'La esperada secuela de OW', 'assets/t2.jpg'),
                buildCard('StarCraft 2 Collection', 'La trilogia completa de SC 2', 'assets/t3.jpg'),
                buildCard('Blizzard Rumble', 'Nuevo juego de estrategia', 'assets/t4.jpg'),
                buildCard('World of Warcraft Classic', 'Revive la experiencía de este MMORPG', 'assets/t5.jpg'),
                buildCard('Modern Warfare 2 Remastered', 'Revive MW 2 con gráficos modernos', 'assets/t6.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String description, String imagePath) {
    return Container(
      width: 400,
      height: 300,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Acción cuando se presiona el botón
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff0476D9)),
                      minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 48.0)),
                    ),
                    child: const Text('Añadir al carrito'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
