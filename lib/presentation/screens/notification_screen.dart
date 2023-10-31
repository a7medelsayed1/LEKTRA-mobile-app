import '../../core/app_export.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class YourReportPatientScreen1 extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        appBar: CustomAppBar(
          height: getVerticalSize(
            84,
          ),
          leadingWidth: 64,
          leading: AppbarImage(
            height: getSize(
              25,
            ),
            width: getSize(
              25,
            ),
            svgPath: ImageConstant.imgBiarrowleft,
            margin: getMargin(
              left: 39,
              top: 20,
              bottom: 10,
            ),
          ),
          centerTitle: true,
          title: Container(
            height: getVerticalSize(
              29,
            ),
            width: getHorizontalSize(
              95,
            ),
            child: Stack(
              children: [
                AppbarTitle(
                  text: "lbl_l_ktra".tr,
                ),
                Padding(
                  padding: getPadding(
                    left: 17,
                    top: 9,
                    right: 68,
                    bottom: 4,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getHorizontalSize(
                          10,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            2,
                          ),
                          thickness: getVerticalSize(
                            2,
                          ),
                          color: ColorConstant.indigo900,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: SizedBox(
                            child: Divider(
                              height: getVerticalSize(
                                2,
                              ),
                              thickness: getVerticalSize(
                                2,
                              ),
                              color: ColorConstant.indigo900,
                              endIndent: getHorizontalSize(
                                3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            10,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              2,
                            ),
                            thickness: getVerticalSize(
                              2,
                            ),
                            color: ColorConstant.indigo900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 16,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse12,
                    height: getSize(
                      65,
                    ),
                    width: getSize(
                      65,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        32,
                      ),
                    ),
                    margin: getMargin(
                      right: 181,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        25,
                      ),
                      width: getHorizontalSize(
                        151,
                      ),
                      margin: getMargin(
                        left: 77,
                        top: 17,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  150,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.indigo900,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_medical_images".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle73,
                    height: getVerticalSize(
                      328,
                    ),
                    width: getHorizontalSize(
                      332,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                    margin: getMargin(
                      top: 29,
                      right: 48,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 23,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              top: 21,
                              bottom: 21,
                            ),
                            color: ColorConstant.blueGray100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                106,
                              ),
                              width: getHorizontalSize(
                                79,
                              ),
                              decoration:
                              AppDecoration.fillBluegray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle29,
                                    height: getVerticalSize(
                                      106,
                                    ),
                                    width: getHorizontalSize(
                                      79,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              106,
                            ),
                            width: getHorizontalSize(
                              79,
                            ),
                            margin: getMargin(
                              left: 18,
                              top: 21,
                              bottom: 21,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle29,
                                  height: getVerticalSize(
                                    106,
                                  ),
                                  width: getHorizontalSize(
                                    79,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle26,
                                  height: getVerticalSize(
                                    106,
                                  ),
                                  width: getHorizontalSize(
                                    79,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              148,
                            ),
                            width: getHorizontalSize(
                              103,
                            ),
                            margin: getMargin(
                              left: 17,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle26,
                                  height: getVerticalSize(
                                    148,
                                  ),
                                  width: getHorizontalSize(
                                    103,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle73,
                                  height: getVerticalSize(
                                    148,
                                  ),
                                  width: getHorizontalSize(
                                    103,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 17,
                              top: 21,
                              bottom: 21,
                            ),
                            color: ColorConstant.blueGray100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                106,
                              ),
                              width: getHorizontalSize(
                                79,
                              ),
                              decoration:
                              AppDecoration.fillBluegray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle26,
                                    height: getVerticalSize(
                                      106,
                                    ),
                                    width: getHorizontalSize(
                                      79,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 17,
                              top: 21,
                              bottom: 21,
                            ),
                            color: ColorConstant.blueGray100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                106,
                              ),
                              width: getHorizontalSize(
                                79,
                              ),
                              decoration:
                              AppDecoration.fillBluegray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle73,
                                    height: getVerticalSize(
                                      106,
                                    ),
                                    width: getHorizontalSize(
                                      79,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        25,
                      ),
                      width: getHorizontalSize(
                        78,
                      ),
                      margin: getMargin(
                        left: 71,
                        top: 47,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_reports".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium20,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: getHorizontalSize(
                                78,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.indigo900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      339,
                    ),
                    margin: getMargin(
                      left: 75,
                      top: 16,
                      right: 44,
                    ),
                    child: Text(
                      "msg_leukocoria_can_be".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
