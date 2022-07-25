import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class KeyMapping extends StatelessWidget {
  const KeyMapping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Mapping'),
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
                  "Key Mapping",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                    text:
                        'By default, this is the keymap, but you can change it in',
                  ),
                  TextSpan(
                    text: ' PumpSanity Configuration:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "Q",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " Z",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " S",
                      style: TextStyle(
                          color: Colors.yellow, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " E",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " C",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ":",
                    ),
                    TextSpan(
                      text: " Player 1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "7",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " 1",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " 5",
                      style: TextStyle(
                          color: Colors.yellow, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " 9",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " -",
                    ),
                    TextSpan(
                      text: " 3",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ":",
                    ),
                    TextSpan(
                      text: "  Player 2",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const GalleryImage(
            'keymapping',
            AssetImage('images/keymapping.jpg'),
          ),
        ],
      ),
    );
  }
}
