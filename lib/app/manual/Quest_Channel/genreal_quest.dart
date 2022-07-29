import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class GeneralQuest extends StatelessWidget {
  const GeneralQuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Quest'),
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
                  "General Quest",
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
                        'Quest Channels are Groups where you have songs with stepcharts lockeds, and the only way to unlock them is playing it consecutively from the first one. These steps can have pre-requisite in order to unlock the next stepchart in the row.',
                  ),
                ],
              ),
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
                    TextSpan(
                      text:
                          "\n\nQuest Channels have a green background, Categorized as 'Quest' and there are only 4 steps slots visible on Prime.",
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
            'generalquest',
            AssetImage('images/generalquest.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
