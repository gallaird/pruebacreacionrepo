import 'package:flutter/material.dart';
import 'package:bapp3/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Conversaciones extends StatelessWidget {
  const Conversaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_04.png'),
                ),
                title:  Text(
                  'AciDolenTo',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Lorem ipsum lorem ipsum lorem ipsum ',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_05.png'),
                ),
                title:  Text(
                  'EduvVilla',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Lorem Ipsum lorem ipsum lorem ipsum lorem ipsum ',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_06.png'),
                ),
                title:  Text(
                  'GenScream',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'lorem ipsum lorem ipsum  lorem ipsum lorem ipsum ',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),


                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_09.png'),
                ),
                title:  Text(
                  'Wellal',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'lorem ipsum lorem ipsum  lorem ipsum ',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),

                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_11.png'),
                ),
                title:  Text(
                  'CharZ',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'lorem ipsum lorem ipsum  lorem ipsum lorem ipsum lorem ipsum',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}