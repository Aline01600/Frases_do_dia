import 'package:flutter/material.dart'; // contém todos os widgets e classes que seguem o design Material Design do Google

void main() => runApp(MyApp()); // => = {}, notação pra quando se tem uma unica linha

class MyApp extends StatelessWidget { //a maioria dos elementos da interface do usuário (UI) é uma classe que herda de Widget stateless não mudam suas carcteristicas, ou stateful mudam suas caracteristicas com mudança de estdo.
  @override
  Widget build(BuildContext context) { //O build é o método mais importante de qualquer widget no Flutter. É ele que descreve como o widget deve ser desenhado na tela.
    return MaterialApp( //widget principal que configura o ambiente para o aplicativo
      debugShowCheckedModeBanner: false,
      title: 'Frases do dia',
      home: Scaffold( //widget que cria um layout visual básico e comum de um aplicativo Material Design. Ele fornece os "espaços" pré-definidos para você colocar seu conteúdo
        appBar: AppBar(
          title: const Text("Frases do Dia"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Text("Corpo da página"),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.greenAccent,
          child: Text("botões aqui")
        ),
      ),
    );
  }
}
