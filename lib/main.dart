import 'package:flutter/material.dart';
import 'package:quoteapp/quote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quote App",
      home: Quote(),
    );
  }
}
