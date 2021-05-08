import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/modules/home/bindings/home_binding.dart';
import 'package:masu_mart/app/modules/home/views/home_view.dart';

class AuthenticationController extends GetxController {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  RxBool passwordshow = true.obs;
  RxBool register = false.obs;

  //for register
  TextEditingController remailController = new TextEditingController();
  TextEditingController rpasswordController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController repasswordController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void signIn() {
    if (formkey.currentState.validate()) {
      Get.offAll(() => HomeView(), binding: HomeBinding());
    }
  }

  void registerAccount() {
    if (formkey.currentState.validate()) {
      Get.offAll(() => HomeView(), binding: HomeBinding());
    }
  }

  void googleSingIn() {
    Get.offAll(() => HomeView(), binding: HomeBinding());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    remailController.dispose();
    rpasswordController.dispose();
    usernameController.dispose();
    repasswordController.dispose();
    mobileController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
