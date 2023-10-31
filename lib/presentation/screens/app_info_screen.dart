
import '/core/app_export.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_image_view.dart';

class AppInfoScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 1, top: 49, right: 1, bottom: 49),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(25),
                          width: getSize(25),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 23),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      CustomImageView(
                          svgPath: ImageConstant.imgEyesrafiki,
                          height: getVerticalSize(360),
                          width: getHorizontalSize(425),
                          margin: getMargin(top: 34)),
                      Padding(
                          padding: getPadding(top: 87),
                          child: Text("lbl_lektra_app".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium22Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.44)))),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Text("lbl_version_1".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo22,
                          height: getVerticalSize(46),
                          width: getHorizontalSize(168),
                          margin: getMargin(top: 12)),
                      Padding(
                          padding: getPadding(top: 18, bottom: 5),
                          child: Text("msg_2023_lektra_inc".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtJostRomanMedium14))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}

