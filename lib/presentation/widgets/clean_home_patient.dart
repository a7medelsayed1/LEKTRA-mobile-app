
import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/hme_clean_controller.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class SliderfileItemWidget extends StatelessWidget {
  SliderfileItemWidget(
       {
        Key? key,
      }) : super(
    key: key,
  );

  // SliderfileItemModel sliderfileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: ColorConstant.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Container(
          height: getVerticalSize(
            204,
          ),
          width: getHorizontalSize(
            345,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFile,
                height: getVerticalSize(
                  13,
                ),
                width: getHorizontalSize(
                  28,
                ),
                alignment: Alignment.topLeft,
                margin: getMargin(
                  top: 23,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: getVerticalSize(
                    204,
                  ),
                  width: getHorizontalSize(
                    297,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgDoctorpresenti,
                        height: getVerticalSize(
                          159,
                        ),
                        width: getHorizontalSize(
                          101,
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle78,
                              height: getVerticalSize(
                                99,
                              ),
                              width: getHorizontalSize(
                                60,
                              ),
                              radius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle77,
                              height: getVerticalSize(
                                99,
                              ),
                              width: getHorizontalSize(
                                60,
                              ),
                              radius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    20,
                                  ),
                                ),
                              ),
                              margin: getMargin(
                                left: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle80,
                        height: getVerticalSize(
                          99,
                        ),
                        width: getHorizontalSize(
                          60,
                        ),
                        radius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            getHorizontalSize(
                              20,
                            ),
                          ),
                          bottomRight: Radius.circular(
                            getHorizontalSize(
                              20,
                            ),
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        margin: getMargin(
                          left: 95,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgClockYellow700,
                        height: getVerticalSize(
                          25,
                        ),
                        width: getHorizontalSize(
                          35,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: getMargin(
                          left: 101,
                          bottom: 76,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: getHorizontalSize(
                            169,
                          ),
                          margin: getMargin(
                            right: 11,
                            bottom: 37,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_now".tr,
                                  style: TextStyle(
                                    color: ColorConstant.yellow700,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Denk One',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "msg_disclose_your".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Denk One',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_l".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Denk One',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_e".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Denk One',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_ktra".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Denk One',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}