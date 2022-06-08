import 'package:flutter/material.dart';
import 'package:new_project/login.dart';

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
        appBar: AppBar(
          title: Text("Retornando Matrícula: ${widget.matricula}"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => Login()));
                },
                icon: Icon(Icons.logout))
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Matricula: ${widget.matricula}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text("Senha: ${widget.senha}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold)),
                )
              ]),
        ));
  }
}
