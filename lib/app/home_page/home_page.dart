import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        const SizedBox(
          height: 10.0,
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "Based on SM5 PumpSanity can emulates almost every feature from the original game.\nSome of the features PumpSanity has are:",
              style: GoogleFonts.lato(
                fontSize: 17,
              )),
        )),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text: ' Accurate timing & holds like the actual engine.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text: ' Mission modes including WT, WM, QW and infinity.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text:
                      ' 1/1 features from the actual engine like lifebar and scoring system.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text: ' BGA reading from official Prex3 and earlier games.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text: ' Online matching support.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text:
                      ' Every songs from oryginals PIU version (even hidden/unreleased)',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text: ' Online ranking.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text: ' Multiple themes.',
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_circle_outline, color: Colors.purple),
                ),
                TextSpan(
                  text:
                      " Format compatibility:\n .SSC, .SSC.EXT, .UCS, .SMA, .SM, .KSF, .BMS and .DWI",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
