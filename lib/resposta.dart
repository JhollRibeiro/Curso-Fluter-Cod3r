import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 54, 111, 244),
          disabledForegroundColor:
              const Color.fromARGB(255, 122, 122, 122).withOpacity(0.38),
          disabledBackgroundColor:
              const Color.fromARGB(255, 122, 122, 122).withOpacity(0.12),
          elevation: 20,
          shadowColor: Colors.blue,
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
