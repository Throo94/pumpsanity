import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage(
    this.heroTag,
    this.image, {
    Key? key,
  }) : super(key: key);

  final String heroTag;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Image(
        image: image,
      ),
    );
  }
}
