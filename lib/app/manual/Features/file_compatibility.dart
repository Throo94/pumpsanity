import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FileCompatibility extends StatelessWidget {
  const FileCompatibility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Compatibility'),
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
                  "File Compatibility",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'SSC:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Stepmania 5 Sim File',
                  ),
                ],
              ),
            ),
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'UCS:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' User Custom Step File (Pump it Up)',
                  ),
                ],
              ),
            ),
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'SMA:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Stepmania AMX File',
                  ),
                ],
              ),
            ),
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'SM:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Stepmania file (old)',
                  ),
                ],
              ),
            ),
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'KSF:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Kick it Up File',
                  ),
                ],
              ),
            ),
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'BMS:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' BMS File',
                  ),
                ],
              ),
            ),
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
                    child: Icon(
                      Icons.noise_control_off,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'DWI:',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Kilgamayan - Daisuke File',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
