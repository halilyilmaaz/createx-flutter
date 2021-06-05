import 'dart:convert';

import 'package:createx/view/init/drawerMenu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> _city = [];
  List<String> _state = [];
  List<String> _locationEvenu = [];
  List<String> _spor = [];
  String _selectedLocation;
  String _selected;
  String _selectedEvenu;
  String _selectedSaha;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saha Ara"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      endDrawer: DrawMenu(),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              value: _myState,
                              iconSize: 30,
                              icon: (null),
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              hint: Text('Şehir Seç'),
                              onChanged: (String newValue) {
                                setState(() {
                                  _myState = newValue;
                                  _getCitiesList();
                                  print(_myState);
                                });
                              },
                              items: statesList?.map((item) {
                                    return new DropdownMenuItem(
                                      child: new Text(item['name']),
                                      value: item['id'].toString(),
                                    );
                                  })?.toList() ??
                                  [],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              value: _myState,
                              iconSize: 30,
                              icon: (null),
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              hint: Text('İlçe Seç'),
                              onChanged: (String newValue) {
                                setState(() {
                                  _myState = newValue;
                                  _getCitiesList();
                                  print(_myState);
                                });
                              },
                              items: statesList?.map((item) {
                                    return new DropdownMenuItem(
                                      child: new Text(item['name']),
                                      value: item['id'].toString(),
                                    );
                                  })?.toList() ??
                                  [],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              value: _myState,
                              iconSize: 30,
                              icon: (null),
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              hint: Text('Mahalle Seç'),
                              onChanged: (String newValue) {
                                setState(() {
                                  _myState = newValue;
                                  _getCitiesList();
                                  print(_myState);
                                });
                              },
                              items: statesList?.map((item) {
                                    return new DropdownMenuItem(
                                      child: new Text(item['name']),
                                      value: item['id'].toString(),
                                    );
                                  })?.toList() ??
                                  [],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              value: _myState,
                              iconSize: 30,
                              icon: (null),
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              hint: Text('Spor Seç'),
                              onChanged: (String newValue) {
                                setState(() {
                                  _myState = newValue;
                                  _getCitiesList();
                                  print(_myState);
                                });
                              },
                              items: statesList?.map((item) {
                                    return new DropdownMenuItem(
                                      child: new Text(item['name']),
                                      value: item['id'].toString(),
                                    );
                                  })?.toList() ??
                                  [],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                    onPressed: () {}, child: Text("Ara"), color: Colors.grey)
              ],
            ),
          ),
        ),
      ),
    );
  }

  List statesList;
  String _myState;

  String stateInfoUrl = 'http://cleanions.bestweb.my/api/location/get_state';
  Future<String> _getStateList() async {
    await http.post(Uri.parse(stateInfoUrl),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {}).then((response) {
      var data = json.decode(response.body);

//      print(data);
      setState(() {
        statesList = data["il"];
      });
    });
  }

  List citiesList;
  String _myCity;

  String cityInfoUrl =
      'https://raw.githubusercontent.com/wemrekurt/il-ilceler-json/master/belediyelerfull.json';
  Future<String> _getCitiesList() async {
    await http.post(Uri.parse(cityInfoUrl), headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    }, body: {
      "state_id": _myState,
    }).then((response) {
      var data = json.decode(response.body);

      setState(() {
        citiesList = data['il'];
      });
    });
  }
}
