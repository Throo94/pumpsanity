import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class WorldMaxQuestZoneInfnity extends StatelessWidget {
  const WorldMaxQuestZoneInfnity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WorldMax/QuestZone/Infnity'),
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
                  "WorldMax/QuestZone/Infnity",
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
                          "Before playing these custom modes, you should get some specifics SongPacks. You can download them and put those ZIP files in",
                    ),
                    TextSpan(
                      text: " /SongPackages/",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: "  folder. After this, on",
                    ),
                    TextSpan(
                      text: " TITLE SCREEN",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " press Right/Left two times. Remember, this is for missions only",
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
            'worldmaxquestworldinfinity1',
            AssetImage('images/worldmaxquestworldinfinity1.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
          const GalleryImage(
            'worldmaxquestworldinfinity2',
            AssetImage('images/worldmaxquestworldinfinity2.jpg'),
          ),
        ],
      ),
    );
  }
}
