import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShowCard extends StatelessWidget {
  String? imagecardGrid;

  SlideShowCard({this.imagecardGrid});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Image.asset(imagecardGrid!),
    );
  }
}
