import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_dados.dart';
import 'package:quiz_app/resultados.dart';

class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    print('Dados do quiz');
    quiz.shuffle();

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]["alternativaCorreta"] == respostaNumero) {
          print(
            "Resposta certa\n" + quiz[perguntaNumero - 1]["correto"],
          );
          acertos = acertos + 1;
        } else {
          print("Resposta errada\n" + quiz[perguntaNumero - 1]["correto"]);
          erros = erros + 1;
        }

        print("Acertos Totais: $acertos Erros Totais: $erros");

        if (perguntaNumero == 18) {
          print('Terminou o quiz');
          Navigator.pushNamed(context, 'Resultado',
              arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Aplicativo De Quiz")),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Pergunta $perguntaNumero de 18',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                "pergunta:\n\n" + quiz[perguntaNumero - 1]['pergunta'],
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Resposta 1");
                    respondeu(1);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][0],
                    style: TextStyle(fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 10, 100, 10)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Resposta 2");
                    respondeu(2);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][1],
                    style: TextStyle(fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 10, 100, 10)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Resposta 3");
                    respondeu(3);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][2],
                    style: TextStyle(fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 10, 100, 10)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Resposta 4");
                    respondeu(4);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][3],
                    style: TextStyle(fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 10, 100, 10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
