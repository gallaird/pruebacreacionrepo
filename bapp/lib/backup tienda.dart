import 'package:flutter/material.dart';
import 'package:bapp3/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Tienda());

class Tienda extends StatelessWidget {
  const Tienda({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard('Product 1', 'Description of Product 1', 'assets/banner2.jpg'),
                buildCard('Product 2', 'Description of Product 2', 'assets/banner2.jpg'),
                buildCard('Product 3', 'Description of Product 3', 'assets/banner2.jpg'),
                buildCard('Product 4', 'Description of Product 4', 'assets/banner2.jpg'),
                buildCard('Product 5', 'Description of Product 5', 'assets/banner2.jpg'),
                buildCard('Product 6', 'Description of Product 6', 'assets/banner2.jpg'),
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
    );
  }
}
