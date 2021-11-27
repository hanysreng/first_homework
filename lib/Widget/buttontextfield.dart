import 'package:flutter/material.dart';

class ButtonTextFieldSearch extends StatelessWidget {
  String? feildSearch;
  String? iconFieldSearch;
 ButtonTextFieldSearch({Key? key, this.feildSearch,this.iconFieldSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: 42,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: feildSearch,
          labelStyle: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 0.0),
            child: Image.asset(
              iconFieldSearch!,
              width: 10,
              height: 10,
              //  fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
