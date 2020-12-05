import 'package:e_commerce/Models/user.dart';
import 'package:e_commerce/Services/remote_services.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isSigned = false.obs;
  var user = User().obs;

  void auth_user(username, password) async {
    var tempuser = await RemoteServices.authUser(username, password);
    user.value = tempuser;
    print(user.toString());
  }
}
