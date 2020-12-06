import 'package:e_commerce/Models/user.dart';
import 'package:e_commerce/Services/remote_services.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isSigned = false.obs;
  var user = User().obs;

  Future<bool> auth_user(username, password) async {
    var tempuser = await RemoteServices.authUser(username, password);
    if (tempuser.isNotEmpty) {
      user.value = tempuser[0];
      print(user.toJson()["userToken"]);
      return true;
    } else {
      return false;
    }
  }
}
