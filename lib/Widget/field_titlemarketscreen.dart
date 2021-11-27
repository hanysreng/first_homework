import 'package:flutter/material.dart';

class TitleFieldMarketScreen extends StatelessWidget {
  
  String? fieldTitleMarketscreen;
  TitleFieldMarketScreen({Key? key, this.fieldTitleMarketscreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Text(
        fieldTitleMarketscreen!,
        style:const TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
      ),
    );
  }
}
