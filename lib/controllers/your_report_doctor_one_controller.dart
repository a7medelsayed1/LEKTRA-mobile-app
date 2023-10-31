import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class YourReportDoctorOneController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  TextEditingController passwordTwoController = TextEditingController();

  TextEditingController passwordThreeController = TextEditingController();

  TextEditingController passwordFiveController = TextEditingController();

  TextEditingController passwordSixController = TextEditingController();

  TextEditingController passwordSevenController = TextEditingController();

  TextEditingController passwordEightController = TextEditingController();

  TextEditingController groupFortyNineController = TextEditingController();



  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    passwordOneController.dispose();
    passwordTwoController.dispose();
    passwordThreeController.dispose();
    passwordFiveController.dispose();
    passwordSixController.dispose();
    passwordSevenController.dispose();
    passwordEightController.dispose();
    groupFortyNineController.dispose();
  }
}
