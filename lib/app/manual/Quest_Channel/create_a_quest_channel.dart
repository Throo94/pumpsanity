import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class CreateAQuestChannel extends StatelessWidget {
  const CreateAQuestChannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create A Quest Channel'),
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
                  "Create A Quest Channel",
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
                    text: 'For create a Quest Channel you need:',
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Create a text file (empty) with the name 'quest' inside the song's group folder. The game will recognize the Group Folder as a Quest",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const GalleryImage(
            'createaquestchannel',
            AssetImage('images/createaquestchannel.jpg'),
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Be sure that your songs have stepcharts labeled as S1,S2,S3 or S4 (Use Step Editor)\n\n",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "(Optional) Use a description for every quest step, you can split the language with a @ - (Use Step Editor) Reference:\n",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "#QUESTDESC",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          " : Survive until the end@Sobrevive hasta el final@Passe da música\n\n",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "(Optional) Insert mods on the stepcharts, so the song will start with these modifiers (List of Mods below)\n",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
