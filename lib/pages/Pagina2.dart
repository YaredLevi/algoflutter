import 'package:demo/clases/Producto.dart';
import 'package:demo/shared/Barra_lateral.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pagina2 extends StatelessWidget {
  List<Producto> lista = [];

  generaDatos() {
    lista.add(Producto(
        "APPLE",
        "AUDIFONOS BT APPLE AIRPODS",
        "⭐⭐⭐⭐⭐",
        "(4 Calificaciones)",
        "assets/Audífonos.jpg",
        r"$149.000",
        r"$139.990",
        r"$142.000",
        "2%",
        "8M3JNR4I",
        "1200",
        "Airpods Bluetooth"));
    lista.add(Producto(
        "PHILIPS",
        "TRUE WIRELESS PHILIPS TAT1215 6-12 HRS",
        "⭐⭐⭐⭐⭐",
        "(1 Calificaciones)",
        "assets/Audífonos2.jpg",
        r"$49.000",
        r"$39.990",
        r"$42.000",
        "6%",
        "7HU4I3",
        "900",
        "Audifonnos Bluetooth"));
    lista.add(Producto(
        "LIFESTYLES",
        "PRESERVATIVO DE LATEX CLIMAX CONTROL",
        "⭐⭐⭐⭐⭐",
        "(2 Calificaciones)",
        "assets/Condones.jpg",
        r"$5.000",
        r"$3.990",
        r"$5.200",
        "4%",
        "892J3MLI",
        "5",
        "Preservativos"));
    lista.add(Producto(
        "YES!",
        "AGEL LUBRICANTE CON EFECTO DE CALOR",
        "⭐⭐⭐⭐⭐",
        "(10 Calificaciones)",
        "assets/Lubricante.jpg",
        r"$9.000",
        r"$6.990",
        r"$8.000",
        "5%",
        "D98AJSD",
        "14",
        "Lubricantes sexuales"));
  }

  @override
  Widget build(BuildContext context) {
    generaDatos();

    return Scaffold(
      appBar:
          AppBar(title: Text("Mi app inútil", style: TextStyle(fontSize: 40))),
      body: getBody(context),
      drawer: BarraLateral(),
    );
  }

  getBody(BuildContext context) {
    return Container(
      color: Colors.white,
      child: getLista(context),
    );
  }

  getLista(BuildContext context) {
    return ListView.builder(
      itemCount: lista.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 17,
                      offset: Offset(0, 8))
                ],
                //borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage(lista[index].foto.toString())),
                  Row(
                    children: [Text("")],
                  ),
                  Row(children: [
                    Text(lista[index].marca,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                    )
                  ]),
                  Row(
                    children: [Text("")],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        lista[index].descripcion,
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Row(
                    children: [Text("")],
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(lista[index].estrellitas),
                          Text("  " + lista[index].calificaciones)
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [Text("")],
                  ),
                  Row(
                    children: [
                      Text(
                        lista[index].precionormal,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        lista[index].preciotarjeta,
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/Tarjeta.png',
                        width: 20,
                        height: 25,
                      ),
                      Image.asset(
                        'Chek.png',
                        width: 15,
                        height: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Detalle', arguments: lista[index]);
            },
          ),
        );
      },
    );
  }
}
