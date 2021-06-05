import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "kullanıcı adi",
                    labelText: "Kullanıcı adını gir"),
              ),
              Container(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",
                    labelText: "şifre girin"),
              ),
              Container(
                height: 20,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Log In"),
                  color: Colors.green),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text("Sing Up")),
            ],
          )),
    );
  }
}
