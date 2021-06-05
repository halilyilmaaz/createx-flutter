import 'package:flutter/material.dart';

class AnimationLogin extends StatelessWidget {
  //const AnimationLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login First"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Center(
                child: Text("Do you want to be Creater or Player",
                    style: TextStyle(fontSize: 24))),
            Container(
              height: 20,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Creator")),
            Container(
              height: 20,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Player")),
          ],
        ),
      ),
    );
  }
}
