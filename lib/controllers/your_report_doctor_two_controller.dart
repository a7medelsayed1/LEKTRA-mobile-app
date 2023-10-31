import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class YourReportDoctorTwoController extends GetxController {
  TextEditingController groupSixtySixController = TextEditingController();

  Rx<YourReportDoctorTwoModel> yourReportDoctorTwoModelObj =
      YourReportDoctorTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupSixtySixController.dispose();
  }
}
class YourReportDoctorTwoModel {}