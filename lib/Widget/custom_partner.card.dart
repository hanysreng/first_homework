import 'package:flutter/material.dart';

class CustomPartner extends StatelessWidget {
  final String? imagePartner;
  final String? titlePartner;
  CustomPartner({Key? key, this.imagePartner, this.titlePartner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  //   spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePartner!),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
              ),
            ),
          ),
          Text(titlePartner!,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }
}
