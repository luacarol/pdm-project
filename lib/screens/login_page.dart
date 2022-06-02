import 'package:flutter/material.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

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
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.network(
                      "https://live.staticflickr.com/65535/52117372010_198d2036d9_b.jpg",
                      fit: BoxFit.cover),
                ),
                TextFormField(
                  controller: _email,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _senha,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 40.0,
                      child: RaisedButton(
                        color: Colors.black,
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          final String email = _email.text;
                          final String senha = _senha.text;
                          final Login login = Login(email, senha);
                          Navigator.pop(context, login);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                          debugPrint(login.toString());
                        },
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
