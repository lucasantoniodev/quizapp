import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quiz curso de Flutter & Dart'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/logo.png'),
            ElevatedButton(
              onPressed: () => debugPrint('Oi'),
              child: const Text('JOGAR',style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            )
          ],
        ),
      ),
    ));
  }
}