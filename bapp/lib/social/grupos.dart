import 'package:flutter/material.dart';
import 'package:bapp/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Grupos extends StatelessWidget {
  const Grupos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50), // Espacio en la parte superior
          Container(
            padding: EdgeInsets.all(16), // Ajusta el espaciado interno según sea necesario
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Grupos',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 48,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Los grupos son los núcleos sociales para ti y tus amigos en todo Battle.net.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Color(0xffffffff)
                      ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica del botón
            },
            style: ElevatedButton.styleFrom(
              primary: MyTheme.lightTheme().colorScheme.tertiary),
            child: Text(
              'Unirse a un grupo',
              style:GoogleFonts.roboto(
                fontSize: 18,
                color: Color(0xffffffff),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
