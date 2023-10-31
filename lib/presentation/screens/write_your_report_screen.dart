import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_subtitle_2.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

class WriteYourReportScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(90),
                leadingWidth: 49,
                leading: AppbarImage(
                    height: getSize(25),
                    width: getSize(25),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 16),
                    onTap: onTapArrowleft4),
                title: AppbarSubtitle2(
                    text: "msg_about_your_image".tr,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(18),
                      svgPath: ImageConstant.imgHomeIndigo900,
                      margin:
                          getMargin(left: 23, top: 16, right: 23, bottom: 19))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle26,
                          height: getVerticalSize(148),
                          width: getHorizontalSize(103),
                          radius: BorderRadius.circular(getHorizontalSize(8)),
                          margin: getMargin(left: 2)),
                      Padding(
                          padding: getPadding(left: 23, top: 9),
                          child: Text("lbl_image_3".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16Gray700)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(380),
                              margin: getMargin(top: 24),
                              padding: getPadding(
                                  left: 20, top: 15, right: 20, bottom: 15),
                              decoration:
                                  AppDecoration.gradientGray300Gray30000,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(right: 10, bottom: 85),
                                        child: Text("msg_leukocoria_can_be".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold12Gray60002))
                                  ]))),
                      Padding(
                          padding: getPadding(bottom: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black900))
                    ])),
            bottomNavigationBar: Container(
                padding: getPadding(left: 118, top: 30, right: 118, bottom: 30),
                decoration: AppDecoration.fillIndigo900,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("msg_save_in_your_report".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20))
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
