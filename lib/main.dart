import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.purple,
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
          backgroundColor: Colors.purple[600],
      ),
      body: SingleChildScrollView( // Untuk Scrolling
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/image-1.jpg',
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Image.network(
                'https://images.unsplash.com/photo-1582769923195-c6e60dc1d8dc?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[800], 
        child: Icon(Icons.add),
      ),
    );
  }
}
