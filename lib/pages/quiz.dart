import 'package:flutter/material.dart';
import 'package:quizapp/pages/resultado.dart';
import 'package:quizapp/date/quiz_dados.dart';

class Quiz extends StatefulWidget {
  final List? quiz;

  const Quiz({Key? key, this.quiz}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    quiz.shuffle();

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          acertos++;
        } else {
          erros++;
        }

        debugPrint('acertos totais: $acertos erros totais: $erros');

        if (perguntaNumero == 10) {
          debugPrint('Terminou o Quiz');
          Navigator.pushNamed(context, 'resultados',
              arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  onPressed: () {
                    debugPrint('${quiz[perguntaNumero - 1]["respostas"][0]} ');
                    respondeu(1);
                  },
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
                  onPressed: () {
                    debugPrint('${quiz[perguntaNumero - 1]["respostas"][1]}');
                    respondeu(2);
                  },
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
                  onPressed: () {
                    debugPrint('${quiz[perguntaNumero - 1]["respostas"][2]}');
                    respondeu(3);
                  },
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
                  onPressed: () {
                    debugPrint('${quiz[perguntaNumero - 1]["respostas"][3]}');
                    respondeu(4);
                  },
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
