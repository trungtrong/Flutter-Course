import 'package:flutter/material.dart';
import 'package:flutter_research_shareappscrack_one/screens/custom-widget/text_custom.dart';

class ParentContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParentContainerState();
} 

// adding underscore before the name of State and Internal State
class _ParentContainerState extends State<ParentContainer> {
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

          child: TextCustom(
            listItems[_listIndex]
          )
        )
      ],
    );
  }
}

/**
 * - TextCustom widget is stateless Widget 
 *  => That means it's never changed when internal state change 
 * 
 * - But in screen is re-rendered, Cuz in ParentContainer, State is changed
 * => the build() method is executed => Flutter will find all widget that use its state
 * => re-build that widget(TextCustom widget)
 * 
 */