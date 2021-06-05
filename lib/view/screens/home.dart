import 'package:createx/view/init/content.dart';
import 'package:createx/view/init/drawerMenu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ContentHome(),
      endDrawer: DrawMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/gonderi');
        },
        child: Icon(Icons.list),
      ),
    );
  }
}
