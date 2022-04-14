import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
            const FlutterLogo(
              size: 300,
            ),
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