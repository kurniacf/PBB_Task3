import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.purple,
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.white, 
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.light().textTheme,
    ),
  ),
  home: Home(),
));

class Home extends StatelessWidget {
  // Fungsi untuk membuka URL
  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Card ProjectQ'),
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),

      // SingleChildScrollView agar bisa di-scroll
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(20.0),
              color: Colors.purple[50],
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/image-1.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kurnia Cahya Febryanto',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.purple[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Student',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.purple[600],
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'kcf170202@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.purple[600],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => _launchURL(Uri.parse("https://www.instagram.com/kurniacf/")),
                        icon: Icon(FontAwesomeIcons.instagram),
                        color: Colors.purple[800],
                      ),
                      IconButton(
                        onPressed: () => _launchURL(Uri.parse("https://github.com/kurniacf")),
                        icon: Icon(FontAwesomeIcons.github),
                        color: Colors.purple[800],
                      ),
                      IconButton(
                        onPressed: () => _launchURL(Uri.parse("https://www.linkedin.com/in/kurnia-cahya-febryanto/")),
                        icon: Icon(FontAwesomeIcons.linkedin),
                        color: Colors.purple[800],
                      ),
                    ],
                  ),
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
