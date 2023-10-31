import '/core/app_export.dart';
import '/presentation/widgets/app_bar/appbar_image.dart';
import '/presentation/widgets/app_bar/appbar_subtitle.dart';
import '/presentation/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';


class YourReportPatientThreeScreen
    extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(73),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(25),
                    width: getSize(25),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 39, top: 9),
                    onTap: onTapArrowleft7),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(29),
                    width: getHorizontalSize(95),
                    child: Stack(children: [
                      AppbarSubtitle(text: "lbl_l_ktra".tr),
                      Padding(
                          padding: getPadding(
                              left: 17, top: 9, right: 68, bottom: 4),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: getHorizontalSize(10),
                                    child: Divider(
                                        height: getVerticalSize(2),
                                        thickness: getVerticalSize(2),
                                        color: ColorConstant.indigo900)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(top: 4),
                                        child: SizedBox(
                                            width: getHorizontalSize(7),
                                            child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color:
                                                    ColorConstant.indigo900)))),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: SizedBox(
                                        width: getHorizontalSize(10),
                                        child: Divider(
                                            height: getVerticalSize(2),
                                            thickness: getVerticalSize(2),
                                            color: ColorConstant.indigo900)))
                              ]))
                    ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 42, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse12,
                                  height: getSize(89),
                                  width: getSize(89),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(44))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("msg_mohamed_ali_anwar".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15)),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_identity2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("msg".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_blood_type2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("lbl3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_age2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("lbl3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_diagnostics".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("lbl3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("lbl_started_in2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("lbl3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_last_update".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("lbl3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_treating_doctor".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.32)))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("lbl3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium20Gray500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("msg_see_more_checkups".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16Gray50002
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.32))))
                            ]))))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
