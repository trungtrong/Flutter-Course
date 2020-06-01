import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Research',
        debugShowCheckedModeBanner: false,
        
        // Using Theme.of(context)['property']
        // to appply the property of theme
        theme: ThemeData(
          primarySwatch: Colors.purple, => color of theme
          backgroundColor: Color.fromRGBO(235, 235, 235, 1),

          // apply all widget with default fonts = Quicksand
          fontFamily: 'Quicksand', 

          // textTheme object
          textTheme: ThemeData.light().textTheme.copyWidth(
            title: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 16,
              fontWeight: FontWeight.w700
            )
          )

        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App")
          ),
          body: Column(
            children: Widget[
              
              // Way 1: apply directly
              Text(
                "Text",
                style: TextStyle(
                  fontFamily: 'OpenSans'
                )
              ),

              // Way 2; Using textTheme

              Text(
                "Text",
                style: Theme.of(context).textTheme.title
              ),
            ]
          )


          )
        ),
    );
  }
}