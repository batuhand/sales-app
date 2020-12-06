import 'package:e_commerce/Views/Widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../home_page.dart';

class UserProducts extends StatelessWidget {
  const UserProducts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width/1.1,
      child: Obx(() => StaggeredGridView.countBuilder(
        scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            itemCount: HomePage.productController.userProductList.length,
            mainAxisSpacing: 10,
            crossAxisSpacing: 16,
            itemBuilder: (context, index) {
              return ProductTile(HomePage.productController.userProductList[index]);
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          )),
    );
  }
}
