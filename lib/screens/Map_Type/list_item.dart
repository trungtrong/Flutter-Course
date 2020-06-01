import 'package:flutter/material.dart';
import 'package:flutter_research_shareappscrack_one/screens/Map_Type/item.dart';
import 'package:flutter_research_shareappscrack_one/screens/custom-widget/text_custom.dart';

class ListItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListItemState();
} 

// adding underscore before the name of State and Internal State
class _ListItemState extends State<ListItem> {
  int _listIndex = 0;
  // 1- Functions
  void _onPressButton() {
    setState(() {
      _listIndex = _listIndex == 0 ? _listIndex++ : 0;
    });
    print(_listIndex);
  }

  // 2- Array
  final questions = [
    {
      'questionText': 'What\s your favorite color?',
      'answers': ['blue', 'red', 'purple', 'pink']
    },

    {
      'questionText': 'What\s your favorite color?',
      'answers': ['blue', 'red', 'purple', 'pink']
    },

    {
      'questionText': 'What\s your favorite color?',
      'answers': ['blue', 'red', 'purple', 'pink']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: _onPressButton,

          child: TextCustom(
            questions[_listIndex]['questionText']
          )
        ),

        /**
         * transform that list into something else
         * - toList(): is used to tell map() method that it don't change
         * the values of questions List
         * 
         * - Using Spead Operator here: 
         * + add each value to toList(), not add List to List
         */
        
        ...(questions[_listIndex]['answers'] as List<String>).map((answer) {
            return Item(answer);
        }).toList(),

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