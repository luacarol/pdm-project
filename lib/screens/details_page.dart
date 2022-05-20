import 'package:flutter/material.dart';
import 'package:app/screens/home_page.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailsPageState();
  }
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text(
            "Detalhes da Instalação",
            textAlign: TextAlign.left,
            style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: 400.0,
            height: 50.0,
            child: Column(children: [
              Text(
                "Qualidade do ar",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ),
              Text(
                "Boa",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ]),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: 400.0,
            height: 50.0,
            child: Column(children: [
              Text(
                "Temperatura",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ),
              Text(
                "10°C",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ]),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: 400.0,
            height: 50.0,
            child: Column(children: [
              Text(
                "Pressão",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ),
              Text(
                "1016 hPa",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ]),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: 400.0,
            height: 50.0,
            child: Column(children: [
              Text(
                "Incidencia Solar",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ),
              Text(
                "3.20 Wm-2",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ]),
          ),
          Divider(),
          ButtonTheme(
              height: 40.0,
              child: RaisedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }))
                },
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.black,
              )),
        ]),
      )),
    );
  }
}
