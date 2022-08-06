import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pumpsanity/app/drawer/drawer_button.dart';
import 'package:pumpsanity/app/manual/Features/custom_music_train.dart';
import 'package:pumpsanity/app/manual/Features/favorites_channel.dart';
import 'package:pumpsanity/app/manual/Features/file_compatibility.dart';
import 'package:pumpsanity/app/manual/Features/piuio_support.dart';
import 'package:pumpsanity/app/manual/Features/ssc_ext_files.dart';
import 'package:pumpsanity/app/manual/Features/ucs_support.dart';
import 'package:pumpsanity/app/manual/Frequently_Asked_Questions/nobga.dart';
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
import 'package:pumpsanity/app/manual/Quest_Channel/create_a_quest_channel.dart';
import 'package:pumpsanity/app/manual/Quest_Channel/genreal_quest.dart';
import 'package:pumpsanity/app/manual/Quest_Channel/quest_goal.dart';
import 'package:pumpsanity/app/manual/Quest_Channel/quest_mods.dart';
import 'package:pumpsanity/app/manual/step_editor/division_mode.dart';
import 'package:pumpsanity/app/manual/step_editor/editor_tricks.dart';
import 'package:pumpsanity/app/manual/step_editor/key_shortcuts.dart';
import 'package:pumpsanity/app/manual/step_editor/tap_note_types.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/quiz/quiz_screen.dart';
import '../manual/Features/custom_sort.dart';
import '../manual/Features/search_song.dart';
import '../manual/Frequently_Asked_Questions/installing_songs.dart';
import '../manual/Introduction/requirements.dart';
import '../manual/step_editor/general_editor.dart';
import '../patchnotes_pages/layout_patchnotes.dart';

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
              DrawerButton('Requirements', (_) => const Requirements()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('How to Install', (_) => const HowToInstall()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton(
                  'StepF2 Conversion', (_) => const StepF2Conversion()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton(
                  'Game Configuration', (_) => const GameConfiguration()),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Frequently Asked Questions'),
            leading: const Icon(Icons.question_mark_rounded),
            children: <Widget>[
              DrawerButton('Installing Songs', (_) => const InstallingSongs()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Group Folders', (_) => const GroupFolders()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('High Resolution', (_) => const HighResolution()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Profiles', (_) => const Profiles()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Event Mode', (_) => const EventMode()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Search Song', (_) => const SearchSong()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('External Group Folders',
                  (_) => const ExternalGroupFolders()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('ZIP SongPackages', (_) => const ZipSongPackages()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('BGA/SongsMovies', (_) => const BGASongMovies()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('NOBGA (Oryginals BGAs)', (_) => const NOBGA()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Key Mapping', (_) => const KeyMapping()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton(
                  'Full Mode/Basic Mode', (_) => const FullModeBasicMode()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Command Window', (_) => const CommandWindow()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('WorldMax/QuestWorld/Infinity',
                  (_) => const WorldMaxQuestZoneInfnity()),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Features'),
            leading: const Icon(Icons.settings_suggest_rounded),
            children: <Widget>[
              DrawerButton(
                  'File Compatibility', (_) => const FileCompatibility()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('.ssc.ext Files', (_) => const SscExtFiles()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('UCS Support', (_) => const UcsSupport()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('PIUIO support', (_) => const PiuioSupport()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton(
                  'Custom Music Train', (_) => const CustomMusicTrain()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Custom Sort', (_) => const CustomSort()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton(
                  'Favorites Channel', (_) => const FavoritesChannel()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Search Song', (_) => const SearchSongs()),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Step Editor'),
            leading: const Icon(Icons.brush),
            children: <Widget>[
              DrawerButton('General Editor', (_) => const GeneralEditor()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Key Shortcuts', (_) => const KeyShortcuts()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Tap Note Types', (_) => const TapNotesTypes()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Division Mode', (_) => const DivisionMode()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Editor tricks', (_) => const EditorTricks()),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Quest Channel'),
            leading: const Icon(Icons.mode_standby),
            children: <Widget>[
              DrawerButton('General Quest', (_) => const GeneralQuest()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton(
                  'Create a Quest Channel', (_) => const CreateAQuestChannel()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Quest Mods', (_) => const QuestMods()),
              const SizedBox(
                height: 7,
              ),
              DrawerButton('Quest Goal', (_) => const QuestGoal()),
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
              launchUrl(Uri.parse("https://pumpsanity.net/scoring.php"));
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
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            child: SizedBox(
                width: 250,
                height: 35,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Card(
                        child: Center(
                      child: Text(
                        'PATCH NOTES',
                        style: GoogleFonts.lato(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    )))),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const LayoutPatchNotes(),
                ),
              );
            },
          ),
        ],
      );
}
