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
      appBar: AppBar(
          title: Text('Sistema Dados Ambientais - Energia Solar'),
          backgroundColor: Color.fromRGBO(0, 0, 0, 1)),
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
                      fontWeight: FontWeight.w300, fontSize: 20),
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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Image.network(
                      "https://live.staticflickr.com/65535/52115921898_f0b4ac0c08_n.jpg",
                      fit: BoxFit.cover),
                ),
                Divider(),
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Column(children: [
                    ListTile(
                      title: Text('3.20 kWh',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Produção Diária'),
                      leading: Icon(
                        Icons.energy_savings_leaf_outlined,
                        color: Colors.blue[500],
                      ),
                    ),
                  ]),
                ),
                Divider(),
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Column(children: [
                    ListTile(
                      title: Text('3.52 BRL',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Rendimento Diário'),
                      leading: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.blue[500],
                      ),
                    ),
                  ]),
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
                        style: TextStyle(color: Colors.white, fontSize: 13),
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
