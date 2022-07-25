import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class FavoritesChannel extends StatelessWidget {
  const FavoritesChannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites Channel'),
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
                  "Favorites Channel",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
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
                      text: "In this channel, your favorite’s songs are saved.",
                    ),
                    TextSpan(
                      text: "\nHold the Center",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          " button when choosing the song to set it as Favorite. You will see a label (Red or Blue) that works as a favorite reference. You can save up to.",
                    ),
                    TextSpan(
                      text: " 300 songs",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          " in this channel. To delete a song from favorites, you need to repeat the sequence.",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const GalleryImage(
            'favorites',
            AssetImage('images/favorites.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
