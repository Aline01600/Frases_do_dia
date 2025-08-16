import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(FrasesDoDia());

class FrasesDoDia extends StatefulWidget {
  const FrasesDoDia({super.key});

  @override
  // Cria o estado para este StatefulWidget.
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

// A classe de estado que gerencia os dados mutáveis do widget principal.
class _FrasesDoDiaState extends State<FrasesDoDia> {
  // Lista de frases para o aplicativo.
  final List<String> _frases = [
    "A vida pode ser bela. Para isso, devemos sempre buscar nos pequenos detalhes a perfeição de cada instante",
    "Tudo o que você pode imaginar é real.",
    "A felicidade não é algo pronto. Ela vem de suas próprias ações.",
    "O que você pensa, você se torna. O que você sente, você atrai. O que você imagina, você cria.",
    "Seja a mudança que você deseja ver no mundo.",
  ];

  // Variável de estado para armazenar a frase atual.
  String _fraseGerada = " ";

  // Método para gerar uma nova frase.
  void _gerarFrase() {
    // Gera um número aleatório entre 0 e o tamanho da lista.
    int numeroAleatorio = Random().nextInt(_frases.length);
    // Usa setState para atualizar a interface do usuário com a nova frase.
    setState(() {
      _fraseGerada = _frases[numeroAleatorio];
    });
  }

  @override
  // Constrói a interface do usuário do widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do dia',
      home: Scaffold(
        // A barra superior do aplicativo.
        appBar: AppBar(
          title: const Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        // Adiciona uma barra inferior vazia
        bottomNavigationBar: const BottomAppBar(color: Colors.green),
        // O corpo da tela.
        body: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.yellow),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("imagens/logo.png"),
                // O Text agora mostra a frase do estado do widget.
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 17),
                ),
                // Adiciona um ElevatedButton para gerar a nova frase.
                ElevatedButton(
                  onPressed: _gerarFrase,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Clique aqui"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
