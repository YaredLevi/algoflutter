import 'package:demo/pages/AcercaDe.dart';
import 'package:demo/pages/Detalle.dart';
import 'package:demo/pages/Form1.dart';
import 'package:demo/pages/Integrantes.dart';
import 'package:flutter/material.dart';
import 'package:demo/pages/Pagina2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app inútil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Form1(),
        '/Pagina2': (context) => Pagina2(),
        '/AcercaDe': (context) => AcercaApp(),
        '/Integrantes': (context) => IntegrantesApp(),
        '/Detalle': (context) => Detalle(),
      },
    );
  }
}
