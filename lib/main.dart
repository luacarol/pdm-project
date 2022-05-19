import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.greenAccent, width: 1000, height: 300),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                Divider(),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                Divider(),
                ButtonTheme(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }))
                      },
                      child: Text(
                        "ENTRAR",
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
