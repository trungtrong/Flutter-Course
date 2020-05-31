import 'package:flutter/material.dart';

class StatefulDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefulDetailsState();
} 

// adding underscore before the name of State and Internal State
class _StatefulDetailsState extends State<StatefulDetails> {
  int _listIndex = 0;
  // 1- Functions
  void _onPressButton() {
    setState(() {
      _listIndex = _listIndex == 0 ? _listIndex++ : 0;
    });
    print(_listIndex);
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
          onPressed: _onPressButton,

          child: Text(
            // listItems.elementAt(0)
            listItems[_listIndex],
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ],
    );
  }
}

