import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PiuioSupport extends StatelessWidget {
  const PiuioSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UCS Support'),
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
                  "UCS Support",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 17,
                ),
                children: [
                  const TextSpan(
                    text: 'We have an experimental',
                  ),
                  TextSpan(
                    text: ' PIUIO',
                    style: GoogleFonts.roboto(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        ' internal driver that you can try. In order to make it work you should follow these steps:',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Steps:",
              style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Uninstall",
                    ),
                    TextSpan(
                      text: " IO2Key",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " (In case you have it)",
                    ),
                  ],
                ),
              ),
            ),
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Download",
                    ),
                    TextSpan(
                      text: " Zadig",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Select your correct input device and select",
                    ),
                    TextSpan(
                      text: " “WINUSB Driver”",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
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
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    const TextSpan(
                      text: "Click “Install Driver”",
                    ),
                    TextSpan(
                      text: " “Install Driver”",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
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
                    WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Once you start StepPrime, the game should connect automatically to the dance",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Image(
            image: AssetImage('images/piuiosupport.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
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
                        text: 'Known Issue\n',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                              'Lights from pads are currently not working properly.',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
