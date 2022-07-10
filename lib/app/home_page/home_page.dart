import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
