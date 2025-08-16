import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do Dia',
      home: Scaffold(appBar: AppBar(title: Text('Frases do Dia'))),
    );
  }
}
