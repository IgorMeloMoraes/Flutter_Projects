import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  // Texto da questão
  // Esta classe recebe um texto e o exibe
  final String texto;

  // Construtor da classe Questao
  // Recebe o texto da questão como parâmetro
  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    // Retorna um widget Text com o texto da questão
    // Este widget é usado para exibir o texto na tela
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 24, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
