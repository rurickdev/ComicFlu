import 'package:flutter/material.dart';

class ReadingScreen extends StatelessWidget {
  final List<Image> pages;

  ReadingScreen({
    this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Abriste un comic!'),
      ),
    );
  }
}
