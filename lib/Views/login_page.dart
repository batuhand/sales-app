import 'package:e_commerce/Controllers/auth_controller.dart';
import 'package:e_commerce/Views/Widgets/login_button.dart';
import 'package:e_commerce/Views/Widgets/password_input.dart';
import 'package:e_commerce/Views/Widgets/username_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  static AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,50),
                child: Text("SALLA",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
              ),
              InputUsername(),
              InputPassword(),
              LoginButton(),
              Text("Hesabın yok mu?"),
              Text(
                "Kayıt Ol",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
