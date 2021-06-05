import 'package:flutter/material.dart';

class AddField extends StatefulWidget {
  AddField({Key key}) : super(key: key);

  @override
  _AddFieldState createState() => _AddFieldState();
}

class _AddFieldState extends State<AddField> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  String dropdownValue = 'Denizli';
  String gelen = "";
  @override
  Widget build(BuildContext context) {
    List<String> _locations = [
      'İstanbul',
      'Ankara',
      'Denizli',
      'İzmir',
      'Aydın',
      'Bursa'
    ];
    List<String> _location = ['Pendik', 'Maltepe', 'Kadıköy'];
    List<String> _locationEvenu = ['Doğuş', 'Kendi', '1049.'];
    List<String> _locationSaha = ['Kort', 'Basket', 'Futbol', 'Havuz'];
    String _selectedLocation;
    String _selected;
    String _selectedEvenu;
    String _selectedSaha;
    return Scaffold(
      appBar: AppBar(
        title: Text("Saha ekle"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container();
              },
              childCount: top.length,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Wrap(
                            alignment: WrapAlignment.start,
                            direction: Axis.horizontal,
                            spacing: 20,
                            children: [
                              DropdownButton(
                                isExpanded: true,
                                elevation: 8,
                                hint: Text('Spor'),
                                value: _selectedSaha,
                                onChanged: (ilce) {
                                  setState(() {
                                    //_selected = ilce;
                                  });
                                },
                                items: _locationSaha.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                              DropdownButton(
                                isExpanded: true,
                                hint: Text('Şehir Seç'),
                                value: _selectedLocation,
                                onChanged: (sehir) {
                                  setState(() {
                                    _selectedLocation = sehir;
                                  });
                                },
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                              DropdownButton(
                                isExpanded: true,
                                elevation: 8,
                                hint: Text('İlçe Seç'),
                                value: _selected,
                                onChanged: (ilce) {
                                  setState(() {
                                    //_selected = ilce;
                                  });
                                },
                                items: _location.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                              DropdownButton(
                                isExpanded: true,
                                hint: Text('Mahalle Seç'),
                                value: _selectedEvenu,
                                onChanged: (mah) {
                                  setState(() {
                                    //_selectedEvenu = mah;
                                  });
                                },
                                items: _locationEvenu.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Açıklama",
                                    labelText: "Açıklama"),
                                maxLines: 4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    width: MediaQuery.of(context).size.width *
                                        0.80,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      color: Colors.white70,
                                      elevation: 10,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const ListTile(
                                            leading: CircleAvatar(
                                              backgroundColor: Colors.grey,
                                            ),
                                            title: Text('Fotograf Ekle',
                                                style: TextStyle(
                                                    color: Colors.black)),
                                          ),
                                          IconButton(
                                              icon: Icon(Icons.add_a_photo),
                                              onPressed: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text("Tamam"),
                                  color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
    );
  }
}
