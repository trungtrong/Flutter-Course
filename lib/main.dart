import 'package:flutter/material.dart';
import 'package:flutter_research_shareappscrack_one/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /**
    * - Widget : type of build() method
      - build(): is responsible for return the new widget that is shown on screen

      - BuildContext context: The framework call this when < this widget > is inserted into { tree } in a given [BuildContext]
      + and when the < dependencies > of < this widget> changes [InheritedWidget]
    */

  /*
   * - @override
      + Technically, it isn't required
      + Our App worked withou it

      => It is { decorator } is actually provided by Dart
      + It's just used to make our code a bit cleaner and a bit cleaner
      + It's used to override the method of StatelessWidgets

  */

  /*
   * - all the pixels on th screen are controlled by Flutter framework
   */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Research',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 93, 204, 1),
          backgroundColor: Color.fromRGBO(235, 235, 235, 1),
        ),
        home: Scaffold(
          body: HomeScreen(),
        )
    );
  }
}