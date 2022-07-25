import 'package:flutter/material.dart';

import 'gallery_image.dart';

class ScreensPage extends StatelessWidget {
  const ScreensPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 0,
      crossAxisCount: 3,
      children: const <Widget>[
        GalleryImage(
          'Prime01',
          AssetImage('images/prime01.jpg'),
        ),
        GalleryImage(
          'Prime02',
          AssetImage('images/prime02.jpg'),
        ),
        GalleryImage(
          'Prime03',
          AssetImage('images/prime03.jpg'),
        ),
        GalleryImage(
          'XX01',
          AssetImage('images/xx01.jpg'),
        ),
        GalleryImage(
          'XX02',
          AssetImage('images/xx02.jpg'),
        ),
        GalleryImage(
          'XX03',
          AssetImage('images/xx03.jpg'),
        ),
        GalleryImage(
          'Mission01',
          AssetImage('images/mission01.jpg'),
        ),
        GalleryImage(
          'Mission02',
          AssetImage('images/mission02.jpg'),
        ),
        GalleryImage(
          'Mission03',
          AssetImage('images/mission03.jpg'),
        ),
      ],
    );
  }
}
