import 'package:e_commerce/Views/Widgets/password_input.dart';
import 'package:e_commerce/Views/Widgets/username_input.dart';
import 'package:e_commerce/Views/home_page.dart';
import 'package:flutter/material.dart';
import '../login_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () async{
         if(await LoginPage.authController.auth_user(InputUsername.usernameController.text, InputPassword.passwordController.text)){
           print(LoginPage.authController.user.toJson());
           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
         }
        },
        padding: EdgeInsets.fromLTRB(50, 12, 50, 12),
        color: Colors.white70,
        child: Text('Giriş Yap', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
