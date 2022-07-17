import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullModeBasicMode extends StatelessWidget {
  const FullModeBasicMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Mode/Basic Mode'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Full Mode/Basic Mode",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text: "Basic mode will only show",
                    ),
                    TextSpan(
                      text: " BASIC MODE",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          "  group folder. Full mode will show all group folders (channels) and open the command window. In order to view all channels, you need to activate it by a code, play under event mode, or using a profile.",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Image(
            image: AssetImage('images/fullmodebasicmode1.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
          const Image(
            image: AssetImage('images/fullmodebasicmode2.jpg'),
          ),
        ],
      ),
    );
  }
}
