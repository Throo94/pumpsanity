import 'package:flutter/material.dart';

import 'gallery_page.dart';

class ScreensPage extends StatefulWidget {
  const ScreensPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ScreensPage> createState() => _ScreensPageState();
}

class _ScreensPageState extends State<ScreensPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image1', AssetImage('images/theme_sanity.png')),
              ),
            );
          },
          child: const Hero(
            tag: 'image1',
            child: Image(
              image: AssetImage('images/theme_sanity.png'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image2', AssetImage('images/theme_sanity.png')),
              ),
            );
          },
          child: const Hero(
            tag: 'image2',
            child: Image(
              image: AssetImage('images/theme_sanity.png'),
            ),
          ),
        ),
        const FlutterLogo(),
        const FlutterLogo(),
        const FlutterLogo(),
        const FlutterLogo(),
        const FlutterLogo(),
      ],
    );
  }
}
