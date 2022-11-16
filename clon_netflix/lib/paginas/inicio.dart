import 'package:clon_netflix/componentes/cartel_principal.dart';
import 'package:flutter/material.dart';
import '../componentes/item_img.dart';
import '../componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            calrtelPrincipal(),
            this.listaHorizontal(
                "Agregados recientemente", ItemRedondeado(), 6),
            SizedBox(width: 10.0),
            this.listaHorizontal("Tendencias", ItemImg(), 6),
            SizedBox(width: 10.0),
            this.listaHorizontal("Para pasar el rato", ItemImg(), 6),
            SizedBox(width: 10.0),
            this.listaHorizontal("Explorados recientemente", ItemImg(), 6),
            SizedBox(width: 20.0)
          ],
        ),
        bottomNavigationBar: this.navInferior());
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Inicio")),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ("Buscar")),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_add), label: ("Proximamente")),
        BottomNavigationBarItem(
            icon: Icon(Icons.download), label: ("Descargas")),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ("Más"))
      ],
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        SizedBox(
          height: 110.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              }),
        ),
      ],
    );
  }
}
