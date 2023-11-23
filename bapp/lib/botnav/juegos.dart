import 'package:flutter/material.dart';
import 'package:bapp/theme.dart';
import 'package:google_fonts/google_fonts.dart';



class Juegos extends StatelessWidget {
  const Juegos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}