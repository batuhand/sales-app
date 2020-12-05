import 'package:e_commerce/Controllers/auth_controller.dart';
import 'package:e_commerce/Services/remote_services.dart';
import 'package:e_commerce/Views/Widgets/password_input.dart';
import 'package:e_commerce/Views/Widgets/username_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);
  static AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          authController.auth_user(InputUsername.usernameController.text, InputPassword.passwordController.text);
        },
        padding: EdgeInsets.fromLTRB(50, 12, 50, 12),
        color: Colors.white70,
        child: Text('Giriş Yap', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
