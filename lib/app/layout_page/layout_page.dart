import 'package:flutter/material.dart';
import 'package:pumpsanity/app/Contact_page/Contact_page.dart';
import 'package:pumpsanity/features/auth/user_profile.dart';

import '../home_page/home_page.dart';
import '../screens_page/screens_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (context) {
            if (currentIndex == 0) {
              return const Text('Home Page');
            } else if (currentIndex == 1) {
              return const Text('Screens Page');
            } else {
              return const Text('Contact Page');
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Manual',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.align_horizontal_center),
              title: const Text('Introduction'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ContactPage(),
                  ),
                );
              },
            ),
            const ListTile(
              title: Text('Requirements'),
            ),
            const ListTile(
              title: Text('How to Install'),
            ),
            const ListTile(
              title: Text('StepF2 Conversion'),
            ),
            const ListTile(
              title: Text('Game Configuration'),
            ),
            const ListTile(
              leading: Icon(Icons.question_mark_rounded),
              title: Text('Frequently Asked Questions'),
            ),
            const ListTile(
              title: Text('Installing Songs'),
            ),
            const ListTile(
              title: Text('Group Folders'),
            ),
            const ListTile(
              title: Text('High Resolution'),
            ),
            const ListTile(
              title: Text('Profiles'),
            ),
            const ListTile(
              title: Text('Event Mode'),
            ),
            const ListTile(
              title: Text('Search Song'),
            ),
            const ListTile(
              title: Text('External Group Folders'),
            ),
            const ListTile(
              title: Text('ZIP SongPackages'),
            ),
            const ListTile(
              title: Text('BGA/SongsMovies'),
            ),
            const ListTile(
              title: Text('NOBGA (Oryginals BGAs)'),
            ),
            const ListTile(
              title: Text('Key Mapping'),
            ),
            const ListTile(
              title: Text('Full Mode/Basic Mode'),
            ),
            const ListTile(
              title: Text('Command Window'),
            ),
            const ListTile(
              title: Text('WorldMax/QuestWorld/Infinity'),
            ),
            const ListTile(
              leading: Icon(Icons.settings_suggest_rounded),
              title: Text('Features'),
            ),
            const ListTile(
              title: Text('File Compatibility'),
            ),
            const ListTile(
              title: Text('.ssc.ext Files'),
            ),
            const ListTile(
              title: Text('PIUIO support'),
            ),
            const ListTile(
              title: Text('Custom Music Train'),
            ),
            const ListTile(
              title: Text('Custom Sort'),
            ),
            const ListTile(
              title: Text('Favorites Channel'),
            ),
            const ListTile(
              title: Text('Search Song'),
            ),
            const ListTile(
              leading: Icon(Icons.brush),
              title: Text('Step Editor'),
            ),
            const ListTile(
              title: Text('Key Shortcuts'),
            ),
            const ListTile(
              title: Text('Tap Note Types'),
            ),
            const ListTile(
              title: Text('Division Mode'),
            ),
            const ListTile(
              title: Text('Editor tricks'),
            ),
            const ListTile(
              leading: Icon(Icons.mode_standby),
              title: Text('Quest Channel'),
            ),
            const ListTile(
              title: Text('Create a Quest Channel'),
            ),
            const ListTile(
              title: Text('Quest Mods'),
            ),
            const ListTile(
              title: Text('Quest Goal'),
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          if (currentIndex == 0) {
            return const HomePage();
          } else if (currentIndex == 1) {
            return const ScreensPage();
          } else {
            return const ContactPage();
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
            icon: Icon(Icons.person),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Screens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
