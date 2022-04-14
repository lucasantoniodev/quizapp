import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int? acertos;

  const Resultado({Key? key, required this.acertos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quiz curso de Flutter & Dart'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Resultado: ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Você acertou\n$acertos de 10\nperguntas  ',
                style: const TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => debugPrint('Oi'),
                  child: const Text(
                    'Jogar Novamente',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20)),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
