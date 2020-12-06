import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Text(
                      "Merhaba " +
                          LoginPage.authController.user.toJson()["userName"],
                      style: TextStyle(
                          color: Colors.grey[200],fontSize: 24 ,fontWeight: FontWeight.bold),
                          
                      textAlign: TextAlign.start,
                    )),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Anasayfa'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Ürünlerim'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profilim'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}
