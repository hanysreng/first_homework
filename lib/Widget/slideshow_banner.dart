import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideBanner extends StatelessWidget {
  String? imagebanner;
   SlideBanner({ Key? key,this.imagebanner }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
                width: double.infinity,
                height: 220,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Image.asset(
                    imagebanner!,
                    fit: BoxFit.fill,
                  ),
                  
                ],
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
              );
  }
}