import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  String matricula;
  String senha;
  Index({Key? key, required this.matricula, required this.senha})
      : super(key: key);

  @override
  State<Index> createState() => _indexState();
}

class _indexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text("Retornando Matrícula: ${widget.matricula}")),
        backgroundColor: Colors.blue,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Matricula: ${widget.matricula}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text("Senha: ${widget.senha}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold)),
                )
              ]),
        ));
  }
}
