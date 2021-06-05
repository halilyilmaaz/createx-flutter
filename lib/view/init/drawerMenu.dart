import 'package:flutter/material.dart';

class DrawMenu extends StatelessWidget {
  const DrawMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Halil Yilmaz"),
            accountEmail: Text("H@gmail.com"),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Ayarlar"),
                  subtitle: Text("Hesap Ayarları"),
                  trailing: Icon(Icons.forward),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profil"),
                  subtitle: Text("Profil Alanına git"),
                  trailing: Icon(Icons.forward),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.list),
                    title: Text("Gönderiler"),
                    subtitle: Text("Gönderiler"),
                    trailing: Icon(Icons.forward),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
