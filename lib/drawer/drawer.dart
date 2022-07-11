import 'package:flutter/material.dart';

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
              image: AssetImage('images/icon.png'),
            ),
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: const [
          ListTile(
            leading: Icon(Icons.align_horizontal_center),
            title: Text('Introduction'),
          ),
          ListTile(
            title: Text('Requirements'),
          ),
          ListTile(
            title: Text('How to Install'),
          ),
          ListTile(
            title: Text('StepF2 Conversion'),
          ),
          ListTile(
            title: Text('Game Configuration'),
          ),
          ListTile(
            leading: Icon(Icons.question_mark_rounded),
            title: Text('Frequently Asked Questions'),
          ),
          ListTile(
            title: Text('Installing Songs'),
          ),
          ListTile(
            title: Text('Group Folders'),
          ),
          ListTile(
            title: Text('High Resolution'),
          ),
          ListTile(
            title: Text('Profiles'),
          ),
          ListTile(
            title: Text('Event Mode'),
          ),
          ListTile(
            title: Text('Search Song'),
          ),
          ListTile(
            title: Text('External Group Folders'),
          ),
          ListTile(
            title: Text('ZIP SongPackages'),
          ),
          ListTile(
            title: Text('BGA/SongsMovies'),
          ),
          ListTile(
            title: Text('NOBGA (Oryginals BGAs)'),
          ),
          ListTile(
            title: Text('Key Mapping'),
          ),
          ListTile(
            title: Text('Full Mode/Basic Mode'),
          ),
          ListTile(
            title: Text('Command Window'),
          ),
          ListTile(
            title: Text('WorldMax/QuestWorld/Infinity'),
          ),
          ListTile(
            leading: Icon(Icons.settings_suggest_rounded),
            title: Text('Features'),
          ),
          ListTile(
            title: Text('File Compatibility'),
          ),
          ListTile(
            title: Text('.ssc.ext Files'),
          ),
          ListTile(
            title: Text('PIUIO support'),
          ),
          ListTile(
            title: Text('Custom Music Train'),
          ),
          ListTile(
            title: Text('Custom Sort'),
          ),
          ListTile(
            title: Text('Favorites Channel'),
          ),
          ListTile(
            title: Text('Search Song'),
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text('Step Editor'),
          ),
          ListTile(
            title: Text('Key Shortcuts'),
          ),
          ListTile(
            title: Text('Tap Note Types'),
          ),
          ListTile(
            title: Text('Division Mode'),
          ),
          ListTile(
            title: Text('Editor tricks'),
          ),
          ListTile(
            leading: Icon(Icons.mode_standby),
            title: Text('Quest Channel'),
          ),
          ListTile(
            title: Text('Create a Quest Channel'),
          ),
          ListTile(
            title: Text('Quest Mods'),
          ),
          ListTile(
            title: Text('Quest Goal'),
          ),
        ],
      );
}
