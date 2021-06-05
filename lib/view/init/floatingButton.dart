import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloationButtonTwo extends StatelessWidget {
  const FloationButtonTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22),
      backgroundColor: Colors.amber,
      visible: true,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
            child: Icon(Icons.assignment_turned_in),
            backgroundColor: Colors.amber,
            onTap: () {
              Navigator.pushNamed(context, '/addfield');
            },
            label: 'Saha Panel',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Colors.amber),
        SpeedDialChild(
            child: Icon(Icons.list),
            backgroundColor: Colors.amber,
            onTap: () {
              Navigator.pushNamed(context, '/gonderi');
            },
            label: 'Gönderi Ekle',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Colors.amber)
      ],
    );
  }
}
