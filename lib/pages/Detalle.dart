import 'package:demo/clases/Producto.dart';
import 'package:flutter/material.dart';

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Producto producto = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Detalle",
          style: TextStyle(fontSize: 40),
        )),
        automaticallyImplyLeading: false,
        // ignore: missing_required_param
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pushNamed(context, '/Pagina2');
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(40),
                //margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Row(children: [Text(producto.marca)]),
                    Row(
                      children: <Widget>[
                        Text(producto.descripcion,
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),

                    Row(children: [
                      Text("SKU: " + producto.codigo,
                          style: TextStyle(fontSize: 11, color: Colors.grey))
                    ]),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(producto.estrellitas),
                            Text(producto.calificaciones,
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [Text("")],
                    ),
                    Row(
                      children: [
                        Text(producto.categoria,
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    Row(
                      children: [Text("")],
                    ),
                    Image(image: AssetImage(producto.foto)),
                    //pa mover el texto
                    Row(
                      children: [
                        Text("Normal",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        Spacer(),
                        Text(producto.precionormal,
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text("Internet",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Spacer(),
                        Text(producto.preciointernet,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Tarjeta Ripley o Chek",
                            style: TextStyle(
                                color: Colors.purple.shade800,
                                fontWeight: FontWeight.bold)),
                        Spacer(),
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
                        Text(
                          " " + producto.preciotarjeta,
                          style: TextStyle(
                              color: Colors.purple.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Descuento:",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            )),
                        Spacer(),
                        Text(producto.descuento),
                        Icon(Icons.local_offer)
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.grey.shade100,
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                child: Text("Con la tarjeta Ripley"),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Text(
                                    'acomulas ${producto.puntos} RipleyPuntos'),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.blue,
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Pagina2');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " << Volver",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
