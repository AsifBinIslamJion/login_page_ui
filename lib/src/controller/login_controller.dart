import 'package:get/get.dart';

class LoginController extends GetxController {
  final passwordview = RxBool(true);

  changeViewPassword() {
    passwordview.toggle();
  }
}
