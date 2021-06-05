import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Şifre",
                  labelText: "şifre gir"),
            ),
            Container(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Şifre Tekrar",
                  labelText: "Şifreni tekrar gir"),
            ),
            Container(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "eposta",
                  labelText: "eposta gir"),
            ),
            Container(
              height: 20,
            ),
            Divider(
              height: 1,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "yaş",
                  labelText: "yaş gir"),
            ),
            Container(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "cinsiyet",
                  labelText: "cinsiyet gir"),
            ),
            Container(
              height: 20,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Sing Up"),
                color: Colors.green),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text("go to home")),
          ],
        ),
      ),
    );
  }
}
