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
      appBar: AppBar(
        title: Text('Sistema Dados Ambientais - Energia Solar'),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text(
            "Detalhes da Instalação",
            textAlign: TextAlign.left,
            style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(children: [
              ListTile(
                title: Text('Qualidade do ar',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle:
                    Text('Boa', style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(
                  Icons.yard_outlined,
                  color: Colors.blue[500],
                ),
              ),
            ]),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(children: [
              ListTile(
                title: Text('Temperatura',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('10 °C',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(
                  Icons.sunny,
                  color: Colors.blue[500],
                ),
              )
            ]),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(children: [
              ListTile(
                title: Text('Pressão',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('1016 hPa',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(
                  Icons.wb_cloudy_outlined,
                  color: Colors.blue[500],
                ),
              ),
            ]),
          ),
          Divider(),
          Container(
            color: Colors.greenAccent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(children: [
              ListTile(
                title: Text('Incidência Solar',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('3.20 Wm-2',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.blue[500],
                ),
              ),
            ]),
          ),
          Divider(),
          // ButtonTheme(
          //     height: 40.0,
          //     child: RaisedButton(
          //       onPressed: () => {
          //         Navigator.push(context, MaterialPageRoute(builder: (context) {
          //           return HomePage();
          //         }))
          //       },
          //       child: Text(
          //         "Voltar",
          //         style: TextStyle(color: Colors.white, fontSize: 12),
          //       ),
          //       color: Colors.black,
          //     )),
        ]),
      )),
    );
  }
}
