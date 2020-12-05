// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Product({
        this.id,
        this.productName,
        this.productCaption,
        this.productValue,
        this.productImage,
        this.productOwner,
    });

    int id;
    String productName;
    String productCaption;
    double productValue;
    String productImage;
    String productOwner;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        productName: json["productName"],
        productCaption: json["productCaption"],
        productValue: json["productValue"].toDouble(),
        productImage: json["productImage"],
        productOwner: json["productOwner"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "productName": productName,
        "productCaption": productCaption,
        "productValue": productValue,
        "productImage": productImage,
        "productOwner": productOwner,
    };
}
