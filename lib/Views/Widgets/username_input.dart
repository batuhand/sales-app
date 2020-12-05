import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputUsername extends StatelessWidget {
  static TextEditingController usernameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: usernameController,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Kullanıcı Adı',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}
