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
  final _transformationController = TransformationController();

  late TapDownDetails _doubleTapDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTapDown: _handleDoubleTapDown,
      onDoubleTap: _handleDoubleTap,
      child: InteractiveViewer(
        transformationController: _transformationController,
        child: Hero(
          tag: widget.heroTag,
          child: Image(
            image: widget.image,
          ),
        ),
      ),
    );
  }

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx, -position.dy)
        ..scale(2.0);
    }
  }
}
