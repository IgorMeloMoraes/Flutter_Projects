import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  // Ação a ser executada quando o botão for pressionado
  // Esta propriedade é opcional, pois pode ser nula
  final VoidCallback? onPressed;
  const Resposta({required this.texto, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // Define o estilo do botão
        // Aqui, estamos definindo a cor de fundo e a cor do texto
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        // Define a ação a ser executada quando o botão for pressionado
        onPressed: onPressed,
        // Define o texto a ser exibido no botão
        child: Text(texto),
      ),
    );
  }
}
