import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(ComicFlu());
}

class ComicFlu extends StatelessWidget {
  static const Color grisOscuro = Color(0xff263238);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(
          backgroundColor: grisOscuro,
          accentColor: Colors.pink,
          fontFamily: 'Quicksand',
          appBarTheme: AppBarTheme(
            color: grisOscuro,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.pink,
          ),
          iconTheme: IconThemeData(
            color: grisOscuro,
          )),
    );
  }
}
