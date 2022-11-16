import 'package:clon_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class calrtelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://limanews.pe/wp-content/uploads/2021/08/casadepapel-1024x576.png',
          height: 450.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 450.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(
          child: navBArSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Telenovelas",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          "Suspenso",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          "Drama",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          "Acción",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          "Adolecentes",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                "Mi Lista",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text("Reproducir", style: TextStyle(color: Colors.black)),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3.0),
              Text("Info",
                  style: TextStyle(color: Colors.white, fontSize: 10.0))
            ],
          ),
        ],
      ),
    );
  }
}
