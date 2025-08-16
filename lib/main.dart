import 'package:flutter/material.dart';

void main() => runApp(FrasesDoDia());

class FrasesDoDia extends StatefulWidget {
@override
_FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Frases do dia',
    home: Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: const BottomAppBar(color: Colors.green),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.yellow),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("imagens/logo.png"),
            const Text(
              "Clique abaixo para gerar uma nova frase!",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    ),
  );
}
}
