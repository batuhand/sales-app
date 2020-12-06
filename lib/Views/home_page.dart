import 'package:e_commerce/Controllers/product_controller.dart';
import 'package:e_commerce/Views/Widgets/drawer.dart';
import 'package:e_commerce/Views/Widgets/login_button.dart';
import 'package:e_commerce/Views/Widgets/product_tile.dart';
import 'package:e_commerce/Views/login_page.dart';
import 'package:e_commerce/Views/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                onPressed: () async{
                  await productController.fetchUserProducts();
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));

                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          backgroundColor: Colors.white70,
        ),
        drawer: MyDrawer(),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Salla",
                        style: TextStyle(
                            fontFamily: "avenir",
                            fontSize: 32,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  
                    IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
                      IconButton(
                      icon: Icon(Icons.add_box_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() {
                    if (productController.isLoading.value)
                      return Center(child: CircularProgressIndicator());
                    return StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: productController.productList.length,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      itemBuilder: (context, index) {
                        return ProductTile(
                            productController.productList[index]);
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    );
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
