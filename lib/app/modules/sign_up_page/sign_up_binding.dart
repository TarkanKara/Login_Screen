import 'package:get/get.dart';
import 'sign_up_controller.dart';

class SigninUpBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(SigninUpController());
  }
}