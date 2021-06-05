import 'package:flutter/material.dart';
import '../../model/homeContent.dart';
import 'package:http/http.dart' as http;

class Posted extends StatefulWidget {
  Posted({Key key}) : super(key: key);

  @override
  _PostedState createState() => _PostedState();
}

Future<Homecontent> createContent(String icerik) async {
  //final String apiUrl = 'http://localhost:3000/homecontent/content';
  final apiUrl = Uri.parse('http://localhost:3000/homecontent/content');
  final headers = {"Content-type": "application/json"};
  final json = '{"icerik": icerik}';
  final response = await http.post(apiUrl, headers: headers, body: json);

  if (response.statusCode == 201) {
    final String responseString = response.body;

    return homecontentFromJson(responseString);
  } else {
    return null;
  }
}

class _PostedState extends State<Posted> {
  Homecontent _content;
  final TextEditingController icerikController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gönderi Yayınla"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 20,
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: icerikController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "İçerik",
              ),
              maxLines: 5,
            ),
            _content == null
                ? Container()
                : Text(
                    "icerk basarılı bir şekilde oluştu : ${_content.icerik}"),
            FlatButton(
                onPressed: () async {
                  final String icerik = icerikController.text;

                  final Homecontent content = await createContent(icerik);

                  setState(() {
                    _content = content;
                  });
                },
                child: Text("Yayınla"),
                color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
