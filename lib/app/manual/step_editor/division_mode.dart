import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class DivisionMode extends StatelessWidget {
  const DivisionMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Division Mode'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Division Mode",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "Division Mode is a great feature that can improve your stepchart, it will switch your stepchart to another chart of the same steptype in realtime gameplay, its conditional so you need to use it carefully, first at all you need to be aware that you can't edit this 100% from StepEditor so you need to edit it manually.",
                    ),
                    const TextSpan(
                      text:
                          "\n\nDivision mode is generally conditional, so before switching to some charts, the game will detect how many W or G were pressed and swicht it depending on amount to another specified chart in the same second on the NoteField. For example, if division is being checked at 19.5 sec, it will switch to another chart in this same second length.",
                    ),
                    const TextSpan(
                      text:
                          "\n\nDivision check needs to be added manually in stepchart from simfile. Open your simfile and modify values based on this:.",
                    ),
                    const TextSpan(
                      text:
                          "\n\n[MIN VALUE]=[MAX VALUE]=[CHART NAME]=[SECOND TO CHECK AND CHANGE]=[TAPNOTE]",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: "\n\n[MINIMUM VALUE]",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ": Minimal value of specified tapnote pressed before to be checked",
                    ),
                    const TextSpan(
                      text: "\n\n[MAX VALUE]",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ": Maximum value of specified tapnote pressed before to be checked.",
                    ),
                    const TextSpan(
                      text: "\n\n[CHART NAME]",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ": Name of chart that will be switched if condition is true, destination",
                    ),
                    const TextSpan(
                      text: " #CHARTNAME",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " stepchart should have this value too.",
                    ),
                    const TextSpan(
                      text: "\n\n[SECOND TO CHECK AND CHANGE]",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ": Seconds Value the game will check this condition.",
                    ),
                    const TextSpan(
                      text: "\n\n[TAPNOTE]",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ": Is accumulated in gameplay and will be resetted if condition is true:\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "W:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Wild TapNote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resetted if condition is true\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "G:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Groove TapNote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resetted if condition is true\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "WG:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Wild & Groove TapNote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resetted if condition is true\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "WGR:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Wild & Groove Tapnote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resseted always after checking the condition\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "ACTION:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Wild TapNote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resetted if condition is true\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "CHANGE:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Wild TapNote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resetted if condition is true\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "SHIELD:",
                      style: GoogleFonts.roboto(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Wild TapNote",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " - TapCount will be resetted if condition is true\n\n",
                    ),
                    TextSpan(
                      text: "Step Segment Section on SimFile:",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "#DIVISION:1=1=HARD PATH=36.26100=G\n,1=1=MEDIUM PATH=42.82900=W\n,2=2=BAD PATH=42.82900=W\n;",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      text: "Now explaining the segment above:",
                    ),
                    TextSpan(
                      text:
                          "\n\nOn 36.21600 second, the game will detect if you pressed min 1 or max 1 Groovy TapNote before, if its correct, the game will switch to the stepchart with the #CHARTNAME 'HARD PATH'.",
                    ),
                    TextSpan(
                      text:
                          "\n\nOn 42.82900 second, the game will detect if you pressed min 1 or max 1 Wild TapNote before, if its correct, the game will switch to the stepchart with the #CHARTNAME 'MEDIUM PATH'.",
                    ),
                    TextSpan(
                      text:
                          "\n\nOn 42.82900 second, the game will detect if you pressed min 2 or max 2 Wild TapNote before, if its correct, the game will switch to the stepchart with the #CHARTNAME 'MEDIUM PATH'.",
                    ),
                    TextSpan(
                      text:
                          "\n\nG TapNotes should be set before the checking time.",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const GalleryImage(
            'divisionmode',
            AssetImage('images/divisionmode.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.volume_down_alt,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      TextSpan(
                        text: 'Important\n',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                              'You can set a noteskin/layer to Groove, Wild, Action, Shield, Change. For example, Groove can use a hidden layer, or/and a Basic NoteSkin\n\n',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text:
                              'Its recommended that every Division Chart destination should be labeled as DIVISION, so they will be hidden and only activated it from these conditions',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      text: "Wrap and Wrap0",
                      style: GoogleFonts.roboto(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const TextSpan(
                      text:
                          "\n\nWrap and Wrap0 are tapnotes that will automatically be pressed once it reach the receptor and their actions are switch to another stepchart",
                    ),
                    const TextSpan(
                      text:
                          "\n\nWrap will switch to a random stepchart (with the same steptype) or switch to a random stepchart with the labelype 'Division'.",
                    ),
                    const TextSpan(
                      text:
                          "\n\nWrap0 will switch to the stepchart that you select first to play.",
                    ),
                    const TextSpan(
                      text:
                          "\n\nEditor is not prepared for Division. So we recommend to insert Wrap0/Wrap/Division Tags once you finished editing your simfile",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.volume_down_alt,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      TextSpan(
                        text: 'SimFile Demonstration\n',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                              'We are attaching a file where you can see how Division/Division Special and Wrap items are working.',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
