import 'package:flutter/material.dart';
class CustomProfile extends StatelessWidget {
  final String? imgUrl;
  const CustomProfile({ Key? key,this.imgUrl }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.8,
                ),
                color: Colors.black26,
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                image:  DecorationImage(
                  image: AssetImage(imgUrl!),
                  fit: BoxFit.cover
                ),
              ),
            );
  }
}