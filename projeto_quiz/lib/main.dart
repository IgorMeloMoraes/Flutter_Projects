import 'package:flutter/material.dart';

main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // variavel de controle de indece de pergunta
    int perguntaIndex = 0;

    // Lista de perguntas
    final List<String> perguntas = [
      'Qual é a capital da França?',
      'Qual é a capital do Brasil?',
      'Qual é a capital dos Estados Unidos?',
    ];

    // Metodo para retornar uma ação quando o clickar no botão
    void responder() {
      perguntaIndex++;
      print('pergunta respondida: $perguntaIndex');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
