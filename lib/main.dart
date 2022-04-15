import 'package:flutter/material.dart';
import 'package:quizapp/pages/home_page.dart';
import 'package:quizapp/pages/quiz.dart';
import 'package:quizapp/pages/resultado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'quiz': (context) => const Quiz(),
        Resultado.routeName: (context) => const Resultado(),
      },
    );
  }
}
