import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class SscExtFiles extends StatelessWidget {
  const SscExtFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSC.EXT Files'),
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
                  "SSC.EXT Files",
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
                      text:
                          "You can now create new steps and share only your step with your friends. This only works if you are using our SongPack (",
                    ),
                    TextSpan(
                      text:
                          " JUMP, MOBILE, RIO, PRO, PRO2, INFINITY, 1STPERFECT, EXTRA-PREX3, EXCEED, ZERO, NX-NXA, FIESTA, FIESTAEX, FIESTA2, PRIME, PRIME2, XX, PUMPSANITY",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " ), once you create the step from the editor, the game will create a file in the song folder with an extension file (",
                    ),
                    TextSpan(
                      text: "*.SSC.EXT",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ") that you can send to your friends. Your friends should also use our SongPack.",
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
            'sscextfiles1',
            AssetImage('images/sscextfiles1.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
          const GalleryImage(
            'sscextfiles2',
            AssetImage('images/sscextfiles2.jpg'),
          ),
        ],
      ),
    );
  }
}
