import 'package:flutter/material.dart';

import 'gallery_page.dart';

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
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image1', AssetImage('images/prime01.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image1',
            child: Image(
              image: AssetImage('images/prime01.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image2', AssetImage('images/prime02.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image2',
            child: Image(
              image: AssetImage('images/prime02.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image3', AssetImage('images/prime03.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image3',
            child: Image(
              image: AssetImage('images/prime03.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    const GalleryPage('image4', AssetImage('images/xx01.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image4',
            child: Image(
              image: AssetImage('images/xx01.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    const GalleryPage('image5', AssetImage('images/xx02.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image5',
            child: Image(
              image: AssetImage('images/xx02.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    const GalleryPage('image6', AssetImage('images/xx03.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image6',
            child: Image(
              image: AssetImage('images/xx03.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image7', AssetImage('images/mission01.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image7',
            child: Image(
              image: AssetImage('images/mission01.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image8', AssetImage('images/mission02.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image8',
            child: Image(
              image: AssetImage('images/mission02.jpg'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GalleryPage(
                    'image9', AssetImage('images/mission03.jpg')),
              ),
            );
          },
          child: const Hero(
            tag: 'image9',
            child: Image(
              image: AssetImage('images/mission03.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}
