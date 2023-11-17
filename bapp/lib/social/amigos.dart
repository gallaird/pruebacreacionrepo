import 'package:flutter/material.dart';
import 'package:bapp/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Amigos extends StatelessWidget {
  const Amigos({super.key});

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
                  backgroundImage: AssetImage('assets/Perfil_02.png'),
                ),
                title:  Text(
                  'Axolote',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Conectado',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_03.png'),
                ),
                title:  Text(
                  'Findecano',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Conectado',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
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
                  'Conectado',
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
                  'Ausente',
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
                  'Ausente',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_07.png'),
                ),
                title:  Text(
                  'Valathar',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Ausente',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_08.png'),
                ),
                title:  Text(
                  'GildeGard',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'No molestar',
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
                  'No molestar',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_10.png'),
                ),
                title:  Text(
                  'Zaravak',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Sin conexión',
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
                  'Sin conexión',
                  style: GoogleFonts.roboto(
                  color: Color(0xffffffff),
                  )
                ),
              ),
                            ListTile(
                leading:  CircleAvatar(
                  backgroundImage: AssetImage('assets/Perfil_12.png'),
                ),
                title:  Text(
                  'DrantZ',
                  style: GoogleFonts.roboto(
                  color: Color(0xff95BBDE),
                  ),
                ),
                subtitle:  Text(
                  'Sin conexión',
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