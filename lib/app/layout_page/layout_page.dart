import 'package:flutter/material.dart';
import 'package:pumpsanity/app/Contact_page/Contact_page.dart';
import 'package:pumpsanity/features/auth/user_profile.dart';

import '../drawer/drawer.dart';
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
      drawer: const SafeArea(child: NavigationDrawer()),
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
