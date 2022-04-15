import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;

  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  static const routeName = 'resultados';

  const Resultado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Resultado: ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Você acertou\n${argumentos.acertos} de 10\nperguntas  ',
                style: const TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'quiz');
                  },
                  child: const Text(
                    'Jogar Novamente',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text(
                    'Voltar para a tela principal',
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
