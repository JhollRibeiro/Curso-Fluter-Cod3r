import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
                /*style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 54, 111, 244),
                disabledForegroundColor: Colors.green.withOpacity(0.38), 
                disabledBackgroundColor: Colors.green.withOpacity(0.12),
                elevation: 20,
                shadowColor: Colors.blue,
              ),*/
                onPressed: responder,
                child: const Text("Resposta 1")),
            ElevatedButton(
                /*style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 54, 111, 244),
                disabledForegroundColor: Colors.green.withOpacity(0.38), 
                disabledBackgroundColor: Colors.green.withOpacity(0.12),
                elevation: 20,
                shadowColor: Colors.blue,
              ),*/
                onPressed: responder,
                child: const Text("Resposta 2")),
            ElevatedButton(
                /*style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 54, 111, 244),
                disabledForegroundColor: Colors.green.withOpacity(0.38), 
                disabledBackgroundColor: Colors.green.withOpacity(0.12),
                elevation: 20,
                shadowColor: Colors.blue,
              ),*/
                onPressed: responder,
                child: const Text("Resposta 3"))
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
