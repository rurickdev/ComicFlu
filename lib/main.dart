import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(ComicFlu());
}

class ComicFlu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(
        backgroundColor: Color(0xff263238),
        accentColor: Colors.pink,
        /*textTheme: TextTheme(          
          button: TextStyle(color: Colors.white),
          title: TextStyle(
            color: Colors.white,
          ),
        ),*/
        fontFamily: 'Quicksand',
        appBarTheme: AppBarTheme(
          color: Color(0xff263238),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.pink,
        ),
      ),
    );
  }
}
