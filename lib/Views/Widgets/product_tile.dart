import 'package:e_commerce/Models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

 @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    'http://127.0.0.1:5000/images/'+product.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
               
              ],
            ),
            SizedBox(height: 8),
            Text(
              product.productName,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
           
            SizedBox(height: 8),
            Text('\₺${product.productValue}',
                style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}