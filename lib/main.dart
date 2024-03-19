import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.purple,
    // colorScheme: ColorScheme.light(
    //   primary: Colors.purple[800], // Warna AppBar
    //   onPrimary: Colors.white, // Warna judul AppBar
    //   secondary: Colors.purple[600], // Warna FAB
    // ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.light().textTheme,
    ),
  ),
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ProjectQ'),
          centerTitle: true,
          backgroundColor: Colors.purple[600], // Atur warna AppBar
      ),
      body: Center(
        child: Text(
          'Welcome Kurnia Cahya',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: GoogleFonts.poppins().fontFamily, // Gunakan Poppins
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[800], // Atur warna FloatingActionButton
        child: Text('click'),
      ),
    );
  }
}
