import 'package:flutter/material.dart';

import 'gallery_page.dart';

class GalleryImage extends StatelessWidget {
  const GalleryImage(this.heroTag, this.image, {Key? key}) : super(key: key);

  final String heroTag;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => GalleryPage(heroTag, image),
          ),
        );
      },
      child: Hero(
        tag: heroTag,
        child: Image(
          image: image,
        ),
      ),
    );
  }
}
