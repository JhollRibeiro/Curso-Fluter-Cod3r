import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.9,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 54, 111, 244),
            disabledForegroundColor:
                const Color.fromARGB(255, 122, 122, 122).withOpacity(0.38),
            disabledBackgroundColor:
                const Color.fromARGB(255, 122, 122, 122).withOpacity(0.12),
            elevation: 20,
            shadowColor: Colors.blue,
            textStyle: const TextStyle(fontSize: 25),
            padding: const EdgeInsets.all(15),
          ),
          onPressed: quandoSelecionado,
          child: Text(texto),
        ),
      ),
    );
  }
}
