import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';


class CommentsController extends GetxController {
  TextEditingController groupTenController = TextEditingController();

  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTenController.dispose();
  }
}

class CommentsModel {
}
