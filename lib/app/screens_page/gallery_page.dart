import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage(
    this.heroTag,
    this.image, {
    Key? key,
  }) : super(key: key);

  final String heroTag;
  final AssetImage image;

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.heroTag,
      child: Image(
        image: widget.image,
      ),
    );
  }
}
