import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? titleProduct;
  final String? subProduct;
  final String? stackProduct;
  final String? priceProduct;
  final String? discountPrice;
  final String? image;
  CustomCard(
      {this.titleProduct,
      this.subProduct,
      this.stackProduct,
      this.priceProduct,
      this.discountPrice,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 1),
            ),
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //Positioned of Stack//
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      stackProduct!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //end Stack ///
          Container(
            //color: Colors.red,
            // width: double.infinity,
            // height: 80,

            padding: const EdgeInsets.only(left: 9, right: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const SizedBox(
                  height: 6,
                ),
                Text(
                  titleProduct!,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subProduct!,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      priceProduct!.toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 2.2,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      discountPrice!.toString(),
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
