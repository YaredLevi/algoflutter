import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Form1 extends StatelessWidget {
  Form1({Key key}) : super(key: key);

  String usuario = "duoc2021";
  String password = "duoc2021";

  Widget formulario(context) {
    return Container(
        margin: EdgeInsets.only(top: 50),
        padding: const EdgeInsets.all(80),
        child: Form(
          key: _formKey,
          child: Container(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Ingrese su Usuario",
                        hintStyle: TextStyle(color: Colors.blue)),
                    validator: (value) {
                      if (value == usuario) {
                        return null;
                      } else {
                        return "Debe ingresar su Usuario";
                      }
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Ingrese su Password",
                        hintStyle: TextStyle(color: Colors.blue)),
                    validator: (value) {
                      if (value == password) {
                        return null;
                      } else {
                        return "Debe ingresar Password";
                      }
                    },
                  ),
                  SizedBox(height: 60),
                  SizedBox(
                    width: double.minPositive,
                    height: 50,
                  ),
                  Center(
                      child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print("formulario OK");
                        print("Usuario ->" + usuario);
                        print("Password ->" + password);
                        Navigator.pushNamed(context, '/Pagina2');
                      } else {
                        print("todo mal");
                      }
                      // pruebas mal hechas xdxd
                      // Navigator.pushNamed(
                      //   context,
                      //   '/Pagina2',
                      // );
                      //Navigator.push(context,
                      //    MaterialPageRoute(builder: (context) => Pagina2()));
                    },
                    child: Text("Acceder"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 30))),
                  ))
                ],
              ),
            ),
          ),
        ));
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.blue,
        ),
        body: Center(child: formulario(context)));
  }
}
