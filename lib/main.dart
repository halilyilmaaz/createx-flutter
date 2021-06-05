import 'package:createx/view/screens/addField.dart';
import 'package:createx/view/screens/posted.dart';
import 'package:flutter/material.dart';

import 'view/init/animationLogin.dart';
import 'view/screens/chat.dart';
import 'view/screens/home.dart';
import 'view/screens/login.dart';
import 'view/screens/profil.dart';
import 'view/screens/register.dart';
import 'view/screens/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/animationLogin',
      routes: {
        '/animationLogin': (context) => AnimationLogin(),
        '/': (context) => MyHomePage(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/addfield': (context) => AddField(),
        '/profil': (context) => Profil(),
        '/gonderi': (context) => Posted(),
        '/home': (context) => Home()
      },
      /*
      routes: {
        '/': (context) => Home(),
        '/chat': (context) => Chat(),
        '/login': (context) => Login(),
        '/profil': (context) => Profil(),
        '/singup': (context) => Singup(),
      },*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  List<Widget> tumsayfalar;
  Home sayfaAna;
  SearchPage sayfaSearch;
  Chat sayfaChat;
  Profil sayfaProfil;

  @override
  void initState() {
    super.initState();
    sayfaAna = Home();
    sayfaSearch = SearchPage();
    sayfaChat = Chat();
    sayfaProfil = Profil();

    tumsayfalar = [sayfaAna, sayfaSearch, sayfaProfil, sayfaChat];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tumsayfalar[secilenMenuItem],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.amber,
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.pink.shade500,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.pink.shade500),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
              backgroundColor: Colors.pink.shade500),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chat',
              backgroundColor: Colors.pink.shade500),
        ],
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
          });
        },
      ),
    );
  }
}
