import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String text;
  
  Item(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // default screen width
      margin: EdgeInsets.all(10),
      child: Text(
        text, 
        style: TextStyle(
          fontSize: 16
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}