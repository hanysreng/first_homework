import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:gridvide/Widget/slideshow_banner.dart';

class CustomBanner extends StatelessWidget {
 final List? imgSliderList;
  CustomBanner({ Key? key,this.imgSliderList }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
                width: double.infinity,
                height: 180,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children:imgSliderList!.map((e) => SlideBanner(
                 imagebanner: e.imagebanner,
                )).toList(),
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
              );
  }
}