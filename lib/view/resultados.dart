import 'package:flutter/material.dart';


class Argumentos{
  int acertos=0;
  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
   const Resultado({Key? key,}) : super(key: key);

  static const routName= 'Resultado';

  @override
  Widget build(BuildContext context) {

    final argumentos =ModalRoute.of(context)?.settings.arguments as Argumentos;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Aplicativo De Quiz")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Resultado:',
                  style: TextStyle(fontSize: 25),
                ),
                 Text("você acertou\n   ${argumentos.acertos} de 18\n perguntas",
                    style: TextStyle(fontSize: 25)),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("pressionado");
                      Navigator.pushNamed(context, 'quiz');
                    },
                    child: const Text(
                      "Jogar Novamente",
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
