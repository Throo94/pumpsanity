import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BGASongMovies extends StatelessWidget {
  const BGASongMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BGA/SongMovies'),
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
                  "BGA/SongMovies",
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
                          "They are video background songs. They are optional but brings a very good experience in game. Put every",
                    ),
                    TextSpan(
                      text: " MP4/MPG",
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        color: Colors.orange,
                      ),
                    ),
                    const TextSpan(
                      text: " file to",
                    ),
                    TextSpan(
                      text: " /SongMovies/",
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        color: Colors.orange,
                      ),
                    ),
                    const TextSpan(
                      text: " folder",
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
