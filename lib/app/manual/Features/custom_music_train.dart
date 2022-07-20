import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMusicTrain extends StatelessWidget {
  const CustomMusicTrain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Music Train'),
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
                  "Custom Music Train",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                    text: 'Music Train',
                    style: GoogleFonts.roboto(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        ' is an special song that contains a list of songs and steps that will be playable consecutively, up to 100! Creating a list is easier than you think; remember to follow these steps to make it work properly:',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Requirements:",
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Preview Banner file: Resolution (464x264),",
                    ),
                    TextSpan(
                      text: " PNG/JPEG",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Format",
                    ),
                  ],
                ),
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
                    const TextSpan(
                      text: "Preview Audio File:",
                    ),
                    TextSpan(
                      text: " MP3/WAV/OGG",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Format, 12 sec length or less",
                    ),
                  ],
                ),
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
                    const TextSpan(
                      text: "Preview Video File:",
                    ),
                    TextSpan(
                      text: " MPG/MP4",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Format (Optional) Max Resolution (640x360)",
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
                      text:
                          "Our SongPack (Recommended) or the Song Pack that you are sharing with the current musictrain.",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Steps:",
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
                    TextSpan(
                      text: "1.",
                      style: GoogleFonts.roboto(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Create a folder in",
                    ),
                    TextSpan(
                      text: " MUSICTRAIN folder",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " (The folder name will be shown in the game)",
                    ),
                  ],
                ),
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
                      text: "2.",
                      style: GoogleFonts.roboto(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Put your files (",
                    ),
                    TextSpan(
                      text: "Banner, Audio, Video",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ") in this folder",
                    ),
                  ],
                ),
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
                      text: "3.",
                      style: GoogleFonts.roboto(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Create an",
                    ),
                    TextSpan(
                      text: " INI",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " called",
                    ),
                    const TextSpan(
                      text: " MUSICTRAIN",
                    ),
                    const TextSpan(
                      text: " with a suffix in the",
                    ),
                    TextSpan(
                      text: " MUSICTRAIN folder (IE: musictrain_First.ini)",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: "  If you dont know how to create an",
                    ),
                    TextSpan(
                      text: " INI",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " File, open notepad and save the textfile with ini extension",
                    ),
                  ],
                ),
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
                          "MUSICTRAIN_* INI STRUCTURE (open your Musictrain_First.ini):",
                      style: GoogleFonts.roboto(
                          color: Colors.purple, fontWeight: FontWeight.bold),
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
            image: AssetImage('images/custommusictrain1.jpg'),
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Your folder name should be between",
                    ),
                    TextSpan(
                      text: " “[“and “]”",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ", this is the section that will be read in game (CASE SENSITIVE)",
                    ),
                  ],
                ),
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
                    const TextSpan(
                      text: "The key",
                    ),
                    TextSpan(
                      text: " “SONGS”",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " will store every song folder that you want to show in the Train",
                    ),
                  ],
                ),
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
                    const TextSpan(
                      text: "The key",
                    ),
                    TextSpan(
                      text: " “STEPS”",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " will store every step from the songs that you stored in",
                    ),
                    TextSpan(
                      text: " SONGS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " key",
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
                      text:
                          "Add more songs and steps using a comma to split between songs/steps",
                    ),
                  ],
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
                    TextSpan(
                      text: "SONGS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " must have",
                    ),
                    TextSpan(
                      text: " GroupFolder",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " and the",
                    ),
                    TextSpan(
                      text: " SongFolder",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " to work properly. IE, if you want to add Desaparecer from XX, then you should write: 13.XX/16D0 – Desaparecer. If you are using a custom folder or custom song, then you should write the path from it",
                    ),
                  ],
                ),
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
                      text: "STEPS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " must have the step type, meter, and the label from the step (optional) For example, if you want to use the Double 23 from Desaparecer, you should write, D23. If you want to use an UCS, then you should add D20 UCS",
                    ),
                  ],
                ),
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
                    const TextSpan(
                      text:
                          "Songs and Steps Lists are sort manually, if the first song value in",
                    ),
                    TextSpan(
                      text: " SONGS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " is Latino Virus, then the First value in",
                    ),
                    TextSpan(
                      text: " STEPS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " must be a valid step from Latino Virus Song only. Same with the rest of the songs and steps.",
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
                    TextSpan(
                      text:
                          "This is the result of the first music train, if everything is good, you will be able to play it.",
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
            image: AssetImage('images/custommusictrain2.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
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
                              "The INI file is not saving the song or the step itself, its just linked reference. If you share your music train and the other user doesn't have the song, then the 'stepball' will not appear",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
