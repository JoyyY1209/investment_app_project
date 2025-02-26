import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Page")),
      body: Center(child: Text("Welcome News!")),
    );
  }
}
