import 'package:createx/model/homeContent.dart';
import 'package:createx/view/init/content.dart';
import 'package:createx/view/init/drawerMenu.dart';
import 'package:createx/view/init/floatingButton.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  Profil({Key key, int data}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    //String url;
    var item = 10;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 20,
                )
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://pbs.twimg.com/profile_images/1387415992352088071/j_47RJwh_400x400.jpg")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Halil Yılmaz",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          Text("Turkey , Istanbul",
              style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildColumn(postModels.length, "posts"),
              buildColumn(121, "followers"),
              buildColumn(117, "following"),
            ],
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 1,
                children: [ContentHome()],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloationButtonTwo(),
    );
  }

  Column buildColumn(int value, String title) {
    return Column(
      children: [
        Text(value.toString(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        Text(title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}

/*
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  Profil({Key key, int data}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    int item = 5;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Profil"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemExtent: 250,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  color: index % 2 == 0
                      ? Colors.purple.shade100
                      : Colors.purple.shade300,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                ),
              ),
            );
          },
          itemCount: item,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/sahaekle');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


 */
