import 'package:flutter/material.dart';
import 'package:new_project/index.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mat = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: mat,
                maxLength: 5,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "MATRICULA",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              Divider(),
              TextFormField(
                controller: password,
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "SENHA",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              Divider(),
              RawMaterialButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  fillColor: Colors.orange,
                  onPressed: () {
                    print("${mat.text} //// ${password.text.toString()}");
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => Index(
                                  matricula: mat.text,
                                  senha: password.text.toString(),
                                )));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
