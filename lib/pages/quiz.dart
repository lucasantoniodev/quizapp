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
      "respostas": ["Uma linguagem", "Um aplicativo", "Um SDK", "Um notebook"],
      "alternativa_correta": 3
    });

    int perguntaNumero = 1;

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
              Align(
                alignment: Alignment.topRight,
                child: Text('Pergunta $perguntaNumero de 10'),
              ),
              Text('Pergunta: ${quiz[perguntaNumero - 1]["pergunta"]}',
                  style: const TextStyle(fontSize: 20)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      debugPrint('${quiz[perguntaNumero - 1]["respostas"][0]}'),
                  child: Text(
                    '${quiz[perguntaNumero - 1]["respostas"][0]}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      debugPrint('${quiz[perguntaNumero - 1]["respostas"][1]}'),
                  child: Text(
                    '${quiz[perguntaNumero - 1]["respostas"][1]}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      debugPrint('${quiz[perguntaNumero - 1]["respostas"][2]}'),
                  child: Text(
                    '${quiz[perguntaNumero - 1]["respostas"][2]}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      debugPrint('${quiz[perguntaNumero - 1]["respostas"][3]}'),
                  child: Text(
                    '${quiz[perguntaNumero - 1]["respostas"][3]}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
