import 'package:demo/pages/AcercaDe.dart';
import 'package:demo/pages/Integrantes.dart';
import 'package:flutter/material.dart';

class BarraLateral extends StatelessWidget {
  const BarraLateral({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Colors.blue,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text("Acerca de", style: TextStyle(fontSize: 40)),
                  onTap: () { 
                    Navigator.push(context,
                    new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new AcercaApp()));
                    },
                  
                ),
                ListTile(
                  title: Text("Integrantes", style: TextStyle(fontSize: 40)),
                  onTap: () {          
                    Navigator.push(context,
                    new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new IntegrantesApp()));
                    },
                )
              ],
            )));
  }
}
