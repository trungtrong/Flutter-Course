import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  // 1- Functions
  void onPressButton() {
    print('Hello lala');
  }

  // 2- Array
  List<String> listItems = [
    'What\'s your name',
    'What\s is this'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: onPressButton,

          child: Text(
            // listItems.elementAt(0)
            listItems[0],
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ],
    );
  }
}