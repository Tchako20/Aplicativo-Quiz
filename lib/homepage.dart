import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Aplicativo De Quiz")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/meme.jpg'),
              ElevatedButton(
                onPressed: () {
                  print("pressionado");
                  Navigator.pushNamed(context, 'quiz');
                },
                child: const Text(
                  "jogar",
                  style: TextStyle(fontSize: 40),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 10, 100, 10)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
