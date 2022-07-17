import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/NOBGA.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/bga_songmovies.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/command_window.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/event_mode.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/external_group_folders.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/full_mode_basic_mode.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/group_folders.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/high_resolution.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/key_mapping.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/profiles.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/search_song.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/world_max_quest_zone_infinity.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/zip_songpackages.dart';
import 'package:pumpsanity/app/manual/Introduction/game_configuration.dart';
import 'package:pumpsanity/app/manual/Introduction/how_to_install.dart';
import 'package:pumpsanity/app/manual/Introduction/stepf2_conversion.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/quiz/quiz_screen.dart';
import '../manual/Frequently_Asked_Questions/installing_songs.dart';
import '../manual/Introduction/requirements.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: null,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: const [
            Image(
              image: AssetImage('images/sanitadoc.png'),
              width: 200,
              height: 200,
            ),
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ExpansionTile(
            title: const Text('Introduction'),
            leading: const Icon(Icons.align_horizontal_center),
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Requirements"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Requirements(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("How to Install"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const HowToInstall(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("StepF2 Conversion"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const StepF2Conversion(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Game Configuration"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const GameConfiguration(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Frequently Asked Questions'),
            leading: const Icon(Icons.question_mark_rounded),
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Installing Songs"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const InstallingSongs(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Group Folders"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const GroupFolders(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("High Resolution"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const HighResolution(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Profiles"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Profiles(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Event Mode"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const EventMode(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Search Song"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SearchSong(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(
                                child: Text("External Group Folders"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ExternalGroupFolders(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("ZIP SongPackages"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ZipSongPackages(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("BGA/SongsMovies"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const BGASongMovies(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(
                                child: Text("NOBGA (Oryginals BGAs)"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const NOBGA(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Key Mapping"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const KeyMapping(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child:
                                Center(child: Text("Full Mode/Basic Mode"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FullModeBasicMode(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Command Window"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const CommandWindow(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(
                                child: Text("WorldMax/QuestWorld/Infinity"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const WorldMaxQuestZoneInfnity(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Features'),
            leading: const Icon(Icons.settings_suggest_rounded),
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("File Compatibility"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Requirements(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text(".ssc.ext Files"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("UCS Support"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("PIUIO support"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Custom Music Train"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Custom Sort"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Favorites Channel"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Search Song"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Step Editor'),
            leading: const Icon(Icons.brush),
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Key Shortcuts"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Requirements(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Tap Note Types"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Division Mode"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Editor tricks"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Quest Channel'),
            leading: const Icon(Icons.mode_standby),
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(
                                child: Text("Create a Quest Channel"))))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Requirements(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Quest Mods"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Card(
                            child: Center(child: Text("Quest Goal"))))),
                onTap: () {},
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          const Divider(color: Colors.white),
          const SizedBox(
            height: 7,
          ),
          GestureDetector(
            child: SizedBox(
                width: 250,
                height: 35,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Card(
                        child: Center(
                      child: Text(
                        'SCORING',
                        style: GoogleFonts.lato(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    )))),
            onTap: () {
              final sanityranking =
                  Uri.parse("https://pumpsanity.net/scoring.php");
              launchUrl(sanityranking);
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: SizedBox(
                width: 250,
                height: 35,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Card(
                        child: Center(
                      child: Text(
                        'QUIZ',
                        style: GoogleFonts.lato(
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                    )))),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const QuizScreen(),
                ),
              );
            },
          ),
        ],
      );
}
