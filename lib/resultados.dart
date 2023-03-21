import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
  final int pontuacao;
  final void Function()? quandoReiniciarQuestionario;

  const Resultados({
    this.pontuacao = 0,
    this.quandoReiniciarQuestionario,
    super.key,
  });

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Pontuação Total: $pontuacao\n',
            style: const TextStyle(
              fontSize: 28,
              color: Color.fromARGB(255, 26, 108, 176),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            fraseResultado.toUpperCase(),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 50, 179, 55),
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
          child: const Text('Reiniciar?'),
        ),
      ],
    );
  }
}

class Colos {}
