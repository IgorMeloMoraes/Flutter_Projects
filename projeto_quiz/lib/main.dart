import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    // Lista de perguntas
    // Cada pergunta é um mapa com o texto da pergunta e as respostas
    // Aqui, estamos definindo três perguntas com suas respectivas respostas
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a capital da França?',
        'respostas': ['Paris', 'Londres', 'Berlim'],
      },
      {
        'texto': 'Qual é a capital do Brasil?',
        'respostas': ['Brasília', 'Rio de Janeiro', 'São Paulo'],
      },
      {
        'texto': 'Qual é a capital dos Estados Unidos?',
        'respostas': ['Washington, D.C.', 'Nova York', 'Los Angeles'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Column(
          children: [
            Questao(perguntas[_perguntaIndex]['texto'] as String),
            Resposta(texto: 'Resposta 1', onPressed: _responder),
            Resposta(texto: 'Resposta 2', onPressed: _responder),
            Resposta(texto: 'Resposta 3', onPressed: _responder),
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
