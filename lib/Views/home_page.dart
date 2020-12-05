import 'package:e_commerce/Controllers/product_controller.dart';
import 'package:e_commerce/Views/Widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

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
                onPressed: () {})
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
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
                    IconButton(
                      icon: Icon(Icons.view_list_rounded),
                      onPressed: () {},
                    ),
                    IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
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
