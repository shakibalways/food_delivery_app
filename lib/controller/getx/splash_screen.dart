import 'package:food_delivery_apps/views/pages/auth/login_or_register/login_or_register.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    getTo();
    super.onInit();
  }

  getTo()async{
    await Future.delayed(const Duration(seconds: 4), () {

      Get.offAll(() =>  const LoginOrRegister());
    });
  }
}