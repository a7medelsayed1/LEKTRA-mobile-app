import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';

class CommentsOneController extends GetxController {
  TextEditingController groupTwentyController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwentyController.dispose();
  }
}
