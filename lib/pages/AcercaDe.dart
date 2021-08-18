import 'package:flutter/material.dart';
import 'package:demo/pages/Pagina2.dart';

class AcercaApp extends StatelessWidget {
  const AcercaApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Acerca De", home: Inicio());
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Pagina2()));
            }),
        backgroundColor: Color(0xFF3D5AFE),
        title: Text('Acerca De', style: TextStyle(fontSize: 25)),
      ),
      backgroundColor: Color(0xFF7986CB),
      body: Column(
        children: [
          Container(
            child:
                Image.asset('assets/imagen4.jpg', width: 200.0, height: 200.0),
          ),
          Center(
            child: Text(
              "Aplicacion Version 1.0",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
