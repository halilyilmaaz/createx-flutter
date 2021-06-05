import 'package:flutter/material.dart';

class ProfilContainer extends StatefulWidget {
  ProfilContainer({Key key}) : super(key: key);

  @override
  _ProfilContainerState createState() => _ProfilContainerState();
}

class _ProfilContainerState extends State<ProfilContainer> {
  @override
  Widget build(BuildContext context) {
    int item = 5;
    return Container(
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
    );
  }
}
