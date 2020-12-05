import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  static TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
     return TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.text,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Parola',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}