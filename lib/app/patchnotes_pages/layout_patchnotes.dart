import 'package:flutter/material.dart';
import 'package:pumpsanity/app/patchnotes_pages/patchnote_engine.dart';
import 'package:pumpsanity/app/patchnotes_pages/patchnote_missions.dart';
import 'package:pumpsanity/app/patchnotes_pages/patchnote_songs.dart';
import 'package:pumpsanity/features/auth/user_profile.dart';

class LayoutPatchNotes extends StatefulWidget {
  const LayoutPatchNotes({
    Key? key,
  }) : super(key: key);

  @override
  State<LayoutPatchNotes> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPatchNotes> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (context) {
            if (currentIndex == 0) {
              return const Text('Patch Notes Engine');
            } else if (currentIndex == 1) {
              return const Text('Patch Notes Missions');
            } else {
              return const Text('Patch Notes Songs');
            }
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UserProfile(),
                ),
              );
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          if (currentIndex == 0) {
            return const PatchnoteEngine();
          } else if (currentIndex == 1) {
            return const PatchnoteMissions();
          } else {
            return const PatchnoteSongs();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.memory),
            label: 'Engine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_flags),
            label: 'Missions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Songs',
          ),
        ],
      ),
    );
  }
}
