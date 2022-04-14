import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta": "Quem descobriu o Brasil?",
        "respostas": [
          "Dom Pedro I",
          "Pedro Álvares Cabral",
          "Tiradentes",
          "Dom Pedro II"
        ],
        "alternativa_correta": 2
      }
    ];

    quiz.add({
      "pergunta": "O Flutter é:",
      "respostas": [
        "Uma linguagem",
        "Um aplicativo",
        "Um SDK",
        "Um notebook"
      ],
      "alternativa_correta": 3
    });

    debugPrint('Dados do Quiz');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Quiz curso de Flutter & Dart'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Align(
                  alignment: Alignment.topRight,
                  child: Text('Pergunta 1 de 10')),
              const Text('Pergunta'),
              ElevatedButton(
                onPressed: () => debugPrint('Pressionado 1'),
                child: const Text(
                  'Resposta 1',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
              ),
              ElevatedButton(
                onPressed: () => debugPrint('Pressionado 2'),
                child: const Text(
                  'Resposta 2',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
              ),
              ElevatedButton(
                onPressed: () => debugPrint('Pressionado 3'),
                child: const Text(
                  'Resposta 3',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
              ),
              ElevatedButton(
                onPressed: () => debugPrint('Pressionado 4'),
                child: const Text(
                  'Resposta 4',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
