import 'package:flutter/material.dart';
import 'questao.dart';

main() => runApp(QuizApp());

// Classe que representa o estado do aplicativo
class _QuizAppState extends State<QuizApp> {
  // variavel de controle de indece de pergunta
  int _perguntaIndex = 0;

  // Metodo para retornar uma ação quando o clickar no botão
  void _responder() {
    setState(() {
      _perguntaIndex++;
    });
    print(_perguntaIndex);
  }

  @override
  Widget build(BuildContext context) {
    // Lista de perguntas
    final List<String> perguntas = [
      'Qual é a capital da França?',
      'Qual é a capital do Brasil?',
      'Qual é a capital dos Estados Unidos?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Column(
          children: [
            Questao(perguntas[_perguntaIndex]),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}

// Classe principal do aplicativo
class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}
