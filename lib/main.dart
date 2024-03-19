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
     body: SingleChildScrollView( // Untuk scrolling
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, 
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'assets/image-1.jpg',
                      fit: BoxFit.cover,
                      height: 100, 
                    ),
                  ),
                  SizedBox(width: 10), 
                  Expanded(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1582769923195-c6e60dc1d8dc?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90oy1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                print('IconButton clicked');
              },
              icon: Icon(Icons.alternate_email),
              color: Colors.amber,
              iconSize: 50.0, // Adjust the icon size as needed
            ),
          ],
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
