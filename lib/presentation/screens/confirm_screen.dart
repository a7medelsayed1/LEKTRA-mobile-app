import '/core/app_export.dart';
import '/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ConfirmScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getVerticalSize(
                  500,
                ),
                width: getHorizontalSize(
                  380,
                ),
                padding: getPadding(
                  left: 150,
                  top: 154,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup7,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "lbl_l_ktra".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtWorkSansRomanBold7,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 5,
                          top: 2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: getHorizontalSize(
                                  3,
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
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  2,
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
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    3,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top:20.0),
                child: Text(
                  "You have successfully registered",
                  maxLines: null,
                  style: AppStyle.txtInterMedium24.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.48,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "lbl_comfirm".tr,
                margin: getMargin(
                  left: 42,
                  top: 32,
                  right: 42,
                ),
                alignment: Alignment.center,
                onTap: onTapConfirm,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
onTapConfirm() {
  Get.toNamed(AppRoutes.homeParentsScreen);
}