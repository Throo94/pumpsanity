import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrientationButton extends StatefulWidget {
  const OrientationButton({Key? key}) : super(key: key);

  @override
  State<OrientationButton> createState() => _OrientationButtonState();
}

class _OrientationButtonState extends State<OrientationButton> {
  var defaultOrientation = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.home,
      ),
      iconSize: 60,
      onPressed: () {
        if (defaultOrientation) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.landscapeRight,
            DeviceOrientation.landscapeLeft,
          ]);
          setState(() {
            defaultOrientation = false;
          });
        } else {
          SystemChrome.setPreferredOrientations([]);
          setState(() {
            defaultOrientation = true;
          });
        }
      },
    );
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([]);
    super.dispose();
  }
}
