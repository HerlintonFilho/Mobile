import 'package:flutter/material.dart';
import 'package:new_project/index.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mat = TextEditingController();
  TextEditingController user = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("App teste")),
        backgroundColor: Colors.lightBlue,
        body: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe sua matricula';
                      }
                      return null;
                    },
                    controller: mat,
                    maxLength: 5,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: new TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "MATRICULA",
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe seu usuário';
                      }
                      return null;
                    },
                    controller: user,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "USUÁRIO",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  RawMaterialButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      fillColor: Colors.orange,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          print('Estou aqui');
                          print("${mat.text} //// ${user.text}");
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => Index(
                                        matricula: mat.text,
                                        usuario: user.text,
                                      )));
                        }
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
