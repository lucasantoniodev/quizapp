import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Image.asset('assets/images/logo.png'),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, 'quiz'),
                    child: const Text(
                      'JOGAR',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
