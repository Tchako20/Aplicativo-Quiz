import 'package:flutter/material.dart';
import 'homepage.dart';
import 'resultados.dart';
import 'quiz.dart';

void main() {
  // runApp( Resultado(acertos: 3,));
  // runApp( quiz());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        initialRoute: '/MyApp',
        routes: {
          '/MyApp': (context) => HomePage(),
          'quiz': (context) => Quiz(),
          Resultado.routName: (context) => Resultado(),
        });
  }
}
