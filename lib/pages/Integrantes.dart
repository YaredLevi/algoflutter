import 'package:flutter/material.dart';
import 'package:demo/pages/Pagina2.dart';

class IntegrantesApp extends StatelessWidget {
  const IntegrantesApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Integrantes",
      home: InicioIntegrantes(),
    );
  }
}

class InicioIntegrantes extends StatefulWidget {
  InicioIntegrantes({Key key}) : super(key: key);

  @override
  _InicioIntegrantesState createState() => _InicioIntegrantesState();
}

class _InicioIntegrantesState extends State<InicioIntegrantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D5AFE),
        title: Text("Integrantes", style: TextStyle(fontSize: 25)),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Pagina2()));
            }),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            children: [
              Image.asset('assets/images1.jpg', width: 100.0, height: 100.0),
              Text(
                "   Eduardo Novoa",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/images2.jpg', width: 100.0, height: 100.0),
              Text(
                "   Yared Ordenes",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/images3.jpg', width: 100.0, height: 100.0),
              Text(
                "   Yoshua Cartes",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
