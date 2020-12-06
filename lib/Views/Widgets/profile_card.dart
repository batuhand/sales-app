import 'package:e_commerce/Models/user.dart';
import 'package:e_commerce/Views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        borderOnForeground: true,
        elevation: 16,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 1.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[200],
                child: ClipOval(
                  child: SizedBox(
                    width: 90.0,
                    height: 90.0,
                    child: Image.network(
                      'http://127.0.0.1:5000/images/' +
                          LoginPage.authController.user.toJson()["userPhoto"],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Row(
                    children: [
                      Text("Merhaba, ",style: TextStyle(fontSize: 16),),
                      Obx(() =>
                          Text(LoginPage.authController.user.toJson()["userName"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
                    ],
                  ),
                      SizedBox(height: 25,),
                       Obx(() =>
                      Text(LoginPage.authController.user.toJson()["userMail"])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
