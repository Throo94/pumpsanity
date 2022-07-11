import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'HELLO EVERYONE!',
            style: GoogleFonts.lato(
                fontSize: 30,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
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
