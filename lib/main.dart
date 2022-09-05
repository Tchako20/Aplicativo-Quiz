import 'package:flutter/material.dart';
import 'view/homepage.dart';
import 'view/resultados.dart';
import 'controller/quiz.dart';

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
      debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.indigo),
        initialRoute: '/MyApp',
        routes: {
          '/MyApp': (context) => HomePage(),
          'quiz': (context) => Quiz(),
          Resultado.routName: (context) => Resultado(),
        });
  }
}
