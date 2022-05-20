import 'package:flutter/material.dart';
import 'package:app/screens/details_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Instalação",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 14),
                ),
                Divider(),
                // Image.asset(
                //   'assets/images/short.logo.png',
                //   width: 30,
                //   height: 30,
                //   fit: BoxFit.fitWidth,
                // ),
                Container(
                  color: Colors.greenAccent,
                  width: 500.0,
                  height: 100.0,
                ),
                Divider(),
                Text(
                  "3.20kWh",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "Produção Diária",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.w100, fontSize: 10),
                ),
                Container(
                  color: Colors.greenAccent,
                  width: 400.0,
                  height: 200.0,
                ),
                Divider(),
                Text(
                  "3.52 BRL",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  "Rendimento Diário",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.w100, fontSize: 10),
                ),
                Container(
                  color: Colors.greenAccent,
                  width: 400.0,
                  height: 200.0,
                ),
                Divider(),
                ButtonTheme(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsPage();
                        }))
                      },
                      child: Text(
                        "Ver mais detalhes",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
