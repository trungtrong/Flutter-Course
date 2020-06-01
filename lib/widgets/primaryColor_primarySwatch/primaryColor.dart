import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /**
    * - Widget : type of build() method
      - build(): is responsible for return the new widget that is shown on screen

      - BuildContext context: The framework call this when < this widget > is inserted into { tree } in a given [BuildContext]
      + and when the < dependencies > of < this widget> changes [InheritedWidget]
    */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Research',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primaryColor: a single color
          
          /* primarySwatch: is based on one single color
           * but  it automatically generates different shades of color
           * and my of Flutter's default widgets need these different shades
           * => That's mean it sets all default color of many of Widgets
           */
          primaryColor: Color.fromRGBO(0, 93, 204, 1),
          backgroundColor: Color.fromRGBO(235, 235, 235, 1),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App")
          ),
          body: HomeScreen()
        ),
    );
  }
}