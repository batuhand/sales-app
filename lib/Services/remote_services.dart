import 'dart:convert';

import 'package:e_commerce/Models/product.dart';
import 'package:e_commerce/Models/user.dart';
import 'package:e_commerce/Views/login_page.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get('http://127.0.0.1:5000/api/products');

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      print("Hata");
      return null;
    }
  }
static Future<List<Product>> fetchUserProducts() async {
    var response = await client.get('http://127.0.0.1:5000/api/products/'+ LoginPage.authController.user.toJson()["userName"]);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      print("Hata");
      return null;
    }
  }
  static Future<List<User>> authUser(String username, String password) async {
    var response = await client.post('http://127.0.0.1:5000/api/auth',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'userName': username,
          'userPassword': password,
        }));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var token = jsonDecode(jsonString)["success"];

      var response2 = await client.post(
          'http://127.0.0.1:5000/api/users/username/' + username,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'token': token,
          }));
          if(response2.statusCode == 200){
            return userFromJson(response2.body);
          }
    } else {
      print("Hata");
      return null;
    }
  }
}
