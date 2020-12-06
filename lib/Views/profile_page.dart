import 'package:e_commerce/Views/Widgets/product_tile.dart';
import 'package:e_commerce/Views/Widgets/profile_card.dart';
import 'package:e_commerce/Views/Widgets/user_products.dart';
import 'package:e_commerce/Views/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil")),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileCard(),
          Card(
              elevation: 10,
              child: Container(
                child: Center(
                    child: Text("Senin Ürünlerin",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: "avenir",
                            fontSize: 24,
                            fontWeight: FontWeight.w900))),
                color: Colors.grey[100],
                height: 50,
                width: MediaQuery.of(context).size.width,
              )),
          Expanded(child: UserProducts()),
          Card(
            elevation:10,
                      child: Container( 
                        child:RaisedButton(child: Text("Ürün Ekle"), onPressed: (){},),
              color: Colors.grey[100],
                  height: 60,
                  width: MediaQuery.of(context).size.width),
          )
        ],
      ),
    );
  }
}
