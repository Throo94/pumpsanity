import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 200,
            child: Image(
              image: AssetImage('images/theme_sanity.png'),
            ),
          ),
          Center(
            child: Text(
              'HELLO EVERYONE!',
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Text('WELCOME TO PUMPSANITY',
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    color: Colors.purple,
                  ))),
          Center(
              child: Text('The Ultimate Pump It Up Simulation',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.purple,
                  ))),
        ],
      ),
    );
  }
}
