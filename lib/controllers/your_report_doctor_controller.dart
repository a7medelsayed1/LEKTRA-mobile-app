import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class YourReportDoctorController extends GetxController {
  TextEditingController groupFortyEightController = TextEditingController();

  TextEditingController groupFortyFourController = TextEditingController();

  TextEditingController groupFortyTwoController = TextEditingController();

  TextEditingController languageTwoController = TextEditingController();

  TextEditingController groupFortyOneController = TextEditingController();

  TextEditingController groupFortyController = TextEditingController();

    @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortyEightController.dispose();
    groupFortyFourController.dispose();
    groupFortyTwoController.dispose();
    languageTwoController.dispose();
    groupFortyOneController.dispose();
    groupFortyController.dispose();
  }
}
