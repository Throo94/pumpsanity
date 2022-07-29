import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class EditorTricks extends StatelessWidget {
  const EditorTricks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editor Tricks'),
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
                  "Editor Tricks",
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
                        'Here are some tricks that stepmakers can use in their charts to customize them.',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Using custom receptor noteskin in chart",
              style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
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
                      text:
                          "For single, double, and double perfomance charts with level 50 or above, you can set a custom receptor. Insert a TapNote with a custom skin in the first column/row, if this TapNote is not part of the chart, you can set it with Fake Layer and Hidden Display Lay",
                    ),
                    TextSpan(
                      text:
                          "\n\nEditor: TapNote with perfomance 2 noteskin with layer Fake and Hidden on first row/column",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const GalleryImage(
            'editortricks1',
            AssetImage('images/editortricks1.jpg'),
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
                    TextSpan(
                      text:
                          "\n\nResult: Perfomance Skin 2 Receptor in coop chart (double-perfomance)",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const GalleryImage(
            'editortricks2',
            AssetImage('images/editortricks2.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
