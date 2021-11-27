import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  String? iconDiscount;
Discount({Key? key, this.iconDiscount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image:  DecorationImage(
          image: AssetImage(iconDiscount!),
          fit: BoxFit.contain,
        ),
      ),
      //child: Image.asset('assets/icon_mainsearch.png'),
    );
  }
}
