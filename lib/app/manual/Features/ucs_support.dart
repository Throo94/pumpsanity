import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UcsSupport extends StatelessWidget {
  const UcsSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UCS Support'),
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
                  "UCS Support",
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
                  const TextSpan(
                    text: 'We are giving support to',
                  ),
                  TextSpan(
                    text: ' .UCS',
                    style: GoogleFonts.roboto(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text: ' files converting it to our',
                  ),
                  TextSpan(
                    text: ' SSC.EXT',
                    style: GoogleFonts.roboto(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        ' format. In order to avoid problems you should follow these steps. Your original',
                  ),
                  TextSpan(
                    text: '  .UCS',
                    style: GoogleFonts.roboto(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text: ' file will not be edited or deleted by the game.',
                  ),
                ],
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Copy your",
                    ),
                    TextSpan(
                      text: " .UCS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " file to the song folder that you are looking for. (Example: Toccata from NX-NXA)",
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
                      text:
                          "Start the game. Once the first load finished, the game will create a ssc.ext file based on your",
                    ),
                    TextSpan(
                      text: " .UCS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " The game will now use the",
                    ),
                    TextSpan(
                      text: " extension ssc file (.ssc.ext)",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " , if its not.",
                    ),
                    TextSpan(
                      text: " Reload Songs",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " from",
                    ),
                    TextSpan(
                      text: " PumpSanity Options",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
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
                      text: "Open",
                    ),
                    TextSpan(
                      text: " Step Editor",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ", and now you can edit the chart and their properties. Remember to delete the",
                    ),
                    TextSpan(
                      text: " .UCS",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " file to avoid overwritten issues",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
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
                      const WidgetSpan(
                        child: Icon(
                          Icons.volume_down_alt,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      TextSpan(
                        text: 'Warning\n',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                              'GhostHold Effect is not supported and will be taken as Hold in the game.\n\nssc.ext will work properly with a main .ssc file, because they are just extensions. Even so, you can use only ssc.ext files and play, but you have been warned.\n\nYou will use this feature under your own responsibility, remember that you can also open this file with notepad, so go ahead and have fun!',
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
