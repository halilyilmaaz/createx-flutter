import 'dart:convert';
import 'dart:io';

import 'package:createx/model/utils/loadHomeContent.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List<LoadData> postModels = [];
final url = "https://jsonplaceholder.typicode.com";

// ignore: missing_return
Future<LoadData> getData() async {
  final response = await http.get(Uri.parse("$url/posts"));

  switch (response.statusCode) {
    case HttpStatus.ok:
      final jsonBody = jsonDecode(response.body);
      if (jsonBody is List) {
        postModels =
            jsonBody.map((e) => LoadData.fromJson(e)).toList().cast<LoadData>();
      }
      break;
    default:
      Text("hata");
  }
}

class ContentHome extends StatefulWidget {
  const ContentHome({Key key}) : super(key: key);

  @override
  _ContentHomeState createState() => _ContentHomeState();
}

class _ContentHomeState extends State<ContentHome> {
  Future<LoadData> futureloadData;
  @override
  void initState() {
    super.initState();
    setState(() {
      futureloadData = getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(postModels[index].title),
                subtitle: Text(postModels[index].body),
                trailing: Icon(Icons.forward),
              ),
            ));
      },
      itemCount: postModels.length,
    ));
  }
}
