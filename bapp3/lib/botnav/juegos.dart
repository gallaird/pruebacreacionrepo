import 'package:flutter/material.dart';
import 'package:bapp3/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Juegos extends StatelessWidget {
  const Juegos({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyTheme.lightTheme().colorScheme.primary,
        body: Container(
          height: 300,
          child: ListView(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            children: [
              buildCard('World of Warcraft ', 'Preventa edición especial',
                  'assets/banner1.jpeg'),
              SizedBox(width: 12),
              buildCard(
                  'COD: MWIII', 'BlackCell BattlePass', 'assets/banner2.jpg'),
              SizedBox(width: 12),
              buildCard(
                  'StarCraft II', 'Wings of Liberty', 'assets/banner3.jpg'),
              SizedBox(width: 12),
              buildCard(
                  'Diablo IV', 'Season of The Scourge', 'assets/banner4.jpg'),
              SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard2(String title, String description, String imagePath) {
    return Container(
      width: 400,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: EdgeInsets.all(8.0),
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
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción al presionar el primer botón
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color((0xff1A1E26))),
                        ),
                        child: Text('Más información'),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción al presionar el segundo botón
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color((0xff0476D9))),
                        ),
                        child: Text('Tienda'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(String title, String description, String imagePath) {
    return Container(
      width: 400,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: EdgeInsets.all(8.0),
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
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción al presionar el primer botón
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color((0xff1A1E26))),
                        ),
                        child: Text('Más información'),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción al presionar el segundo botón
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color((0xff0476D9))),
                        ),
                        child: Text('Tienda'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
