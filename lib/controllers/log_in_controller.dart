import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class LogInController extends GetxController {
  TextEditingController emailphoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // Rx<LogInModel> logInModelObj = LogInModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailphoneController.dispose();
    passwordController.dispose();
  }
}
class LogInModel {}
