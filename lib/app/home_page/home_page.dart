import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pumpsanity/features/auth/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserProfile(),
                  ),
                );
              },
              icon: const Icon(Icons.person))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
            child: Image(
              image: AssetImage('images/theme_sanity.png'),
            ),
          ),
          Center(
            child: Text(
              'HELLO EVERYONE!',
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Text('WELCOME TO PUMPSANITY',
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    color: Colors.purple,
                  ))),
          Center(
              child: Text('The Ultimate Pump It Up Simulation',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.purple,
                  ))),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 50, 10),
            child: IconButton(
              icon: Image.asset('images/rankingicon.png'),
              iconSize: 60,
              onPressed: () {
                final sanityranking =
                    Uri.parse("https://pumpsanity.net/scoring.php");
                launchUrl(sanityranking);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 50, 10),
            child: IconButton(
              icon: Image.asset('images/fbicon.png'),
              iconSize: 60,
              onPressed: () {
                final sanityfb =
                    Uri.parse("https://www.facebook.com/StepPrimeOfficial");
                launchUrl(sanityfb);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 50, 10),
            child: IconButton(
              icon: Image.asset('images/discordicon.png'),
              iconSize: 60,
              onPressed: () {
                final sanitydiscord = Uri.parse("https://discord.gg/HKeE8Rkg");
                launchUrl(sanitydiscord);
              },
            ),
          )
        ],
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
            label: 'Socials and raports',
          ),
        ],
      ),
    );
  }
}
