import 'package:flutter/material.dart';

/**
 * 1/ State is a generic class that is imported from 'material/dart'
 * 
 * 2/ In here, we have 2 classes
 *  Cuz, Flutter works internally
    
    class StatefulDetails extends StatefulWidget {}
  => This widget can be recreated when the external data changes
  => But that class now, can't be recreated
     * that's important here for storing your state
     * when the {Internal State} change = { listIndex }
     * and { External state } in < class StatefulDetails extends StatefulWidget {} > changes
  
    2-2/ { External state } in < class StatefulDetails extends StatefulWidget {} > changes
  => only that is rebuild/ re-written

  + but all {Internal State} don't be reset

    3/ State<StatefulDetails>: State type
    => Flutter tell StatefulDetailsState belongs  StatefulDetails class
    => this make the connection

    4/ createState() return State Object with State type
    
    => Now, the build() method is inside the <State>, not inside the widget
    => Flutter will  not re-render

    5/ We have to tell Flutter, We're about to change State
     and when State is changed
     => it should re-render this widget  => using setState() {}

        void onPressButton() {
          setState(() {
            listIndex = listIndex == 0 ? listIndex++ : 0;
          });
          print(listIndex);
        }

 */

class StatefulDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StatefulDetailsState();
} 


class StatefulDetailsState extends State<StatefulDetails> {
  int listIndex = 0;
  // 1- Functions
  void onPressButton() {
    setState(() {
      listIndex = listIndex == 0 ? listIndex++ : 0;
    });
    print(listIndex);
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
            listItems[listIndex],
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ],
    );
  }
}


/**
 *            II/ 23 - StatefulWidget
 * 
 * 1/ State
 *    +  State is Data/ Info used by your apps or widget on apps
 * 
 *    1-2/ App State
 *        + would be things like --- User Authenticated / Loaded jobs
 *        + data from searching that is loaded from server
 * 
 *    1-3/ Widget State
 *        + Current data input
 * ==> That above states => can be change in app
 * 
 * 
 * 2/  StatelessWidget
 *     + This widget cannot be changed
 *     +  Ex: 
 *        Text(listItems[listIndex]),
 *      => Text widget have no { state } on it, It typically receives
 *        input from outside
 *         + the input is passed in when { Text } widget is created
           + so it never changes while the { internal state - listIndex } 
  
            void onPressButton() {
              listIndex = listIndex == 0 ? listIndex++ : 0;
              print(listIndex);
            }

            => That means it doesn't react when the { internal state }
            of StatelessWidget is changed

 * 3/  The difference between { Stateless } and { Stateful }
 *  
 * 3-1/ StatelessWidget
 *      InputData  => We can pass in input Data from outsite through the constructor of Class(this Widget)
 *                 => This data can be changed and actually the Flutter rebuild that widget <run build() method again>
 *                    when the external data changes
 *                 => But inside of widget class(received input) will never changes / doesn't react
 *                 => we can only receive the new data from outside and rebuild the widget <run build() method again>
 *        |
 *        |
 *      Widget
 *        |     => StatelessWidget has build() method that is used to render UI
 *        |
 *      Render UI
 * 
 *   3-2/ StatefulWidget
 *      InputData  => We can pass in input Data from outsite through the constructor of Class(this Widget)
 *                 => This data can be changed and actually the Flutter rebuild that widget <run build() method again>
 *                    when the external data changes
 *                 => But inside of widget class(received input) will never changes / doesn't react
 *                 => we can only receive the new data from outside and rebuild the widget <run build() method again>
 *        |
 *        |
 *      Widget
 *        |     => StatelessWidget has build() method that is used to render UI
 *        |     => **** We also can have some { Internal State } => so this widget can be re-rendered
 *                when the <inputData - External Data> changes or {Internal state} change
 *              => React the data
 *        |
 *      Render UI
 */

