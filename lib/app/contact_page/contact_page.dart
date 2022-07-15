import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Do you want to be part of our community? \nPlease check our social media',
                style: GoogleFonts.lato(
                    fontSize: 25,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            const SizedBox(
              width: 70,
            ),
            IconButton(
              icon: Image.asset('images/fbicon.png'),
              iconSize: 60,
              onPressed: () {
                final sanityfb =
                    Uri.parse("https://www.facebook.com/StepPrimeOfficial");
                launchUrl(sanityfb);
              },
            ),
            const SizedBox(
              width: 70,
            ),
            IconButton(
              icon: Image.asset('images/discordicon.png'),
              iconSize: 60,
              onPressed: () {
                final sanitydiscord = Uri.parse("https://discord.gg/HKeE8Rkg");
                launchUrl(sanitydiscord);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Or mayby you noticed bug? \nPlease report it on our reports sheets (songs, quests, engine)',
                style: GoogleFonts.lato(
                    fontSize: 25,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            const SizedBox(
              width: 45,
            ),
            IconButton(
              icon: Image.asset('images/songs.png'),
              iconSize: 60,
              onPressed: () {
                final sanityfb = Uri.parse(
                    "https://docs.google.com/spreadsheets/d/1l50NzvTxhRAknqiDJeq6_89saHGZ318essx0mFqcBpo/edit#gid=0");
                launchUrl(sanityfb);
              },
            ),
            const SizedBox(
              width: 35,
            ),
            IconButton(
              icon: Image.asset('images/missions.png'),
              iconSize: 60,
              onPressed: () {
                final sanitydiscord = Uri.parse(
                    "https://docs.google.com/spreadsheets/d/1_I79k8CQsoaYktgFSoueLYjrnT4QFKiA_qULZpc6zEM/edit#gid=0");
                launchUrl(sanitydiscord);
              },
            ),
            const SizedBox(
              width: 35,
            ),
            IconButton(
              icon: Image.asset('images/engine.png'),
              iconSize: 60,
              onPressed: () {
                final sanitydiscord = Uri.parse(
                    "https://docs.google.com/spreadsheets/d/1AckLTBAPwauzjGGf7D_93irS5pIxnYbnMg27N-eAHnk/edit#gid=0");
                launchUrl(sanitydiscord);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Center(
          child: Text(
            'Every images are placeholders',
            style: GoogleFonts.lato(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
