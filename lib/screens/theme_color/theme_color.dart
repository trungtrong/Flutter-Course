import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Research',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // 4-30. Configuring & Using Themes
          // primaryColor: a single color
          
          /* primarySwatch: is based on one single color
           * but  it automatically generates different shades of color
           * and my of Flutter's default widgets need these different shades
           * => That's mean it sets all default color of many of Widgets
           */
          primarySwatch: Colors.purple, => color of theme
          backgroundColor: Color.fromRGBO(235, 235, 235, 1),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App")
          ),
          body: Text(
            "Text",
            style: Theme.of(context).primaryColor // = purple
          )
        ),
    );
  }
}