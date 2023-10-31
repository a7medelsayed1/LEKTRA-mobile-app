import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/hme_clean_controller.dart';

// ignore: must_be_immutable
class Sliderclarityne1ItemWidget extends StatelessWidget {
  Sliderclarityne1ItemWidget(
       {
        Key? key,
      }) : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage(
          'assets/images/banner.png',
        ),
      ),
    );

  }
}