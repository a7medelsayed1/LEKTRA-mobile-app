import '/core/app_export.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_subtitle_4.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import 'clean_report.dart';
import 'write_your_report_screen.dart';

class YourReportPatientScreen extends GetWidget {
  YourReportPatientScreen(this.name, this.image,this.isDoctor);
  final String name;
  final String image;
  final bool isDoctor ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(93),
                leadingWidth: 49,
                leading: isDoctor?AppbarImage(
                    height: getSize(25),
                    width: getSize(25),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 16),
                    onTap: onTapArrowleft):null,
                title: AppbarSubtitle4(
                    text: "lbl_child_report".tr, margin: getMargin(left: 40))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 35, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 40),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: image,
                                        height: getSize(80),
                                        width: getSize(80),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(33))),
                                    Expanded(
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 7, bottom: 7),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(name,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtInterBold16),
                                                Text("lbl_11_months".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtInterMedium14)
                                              ])),
                                    ),
                                    IconButton(onPressed:()=> Get.to(YourReportPatientCleanScreen(image,name)), icon: Icon(
                                      Icons.add_a_photo_outlined,color: Colors.grey,
                                    ))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray500)),
                              Padding(
                                  padding: getPadding(left: 41, top: 23),
                                  child: Row(children: [
                                    Text("lbl_identity".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding:
                                            getPadding(left: 16, bottom: 1),
                                        child: Text("01022907388",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 23),
                                  child: Row(children: [
                                    Text("lbl_blood_type".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding:
                                            getPadding(left: 16, bottom: 1),
                                        child: Text("lbl_ab".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 23),
                                  child: Row(children: [
                                    Text("lbl_age".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding:
                                            getPadding(left: 21, bottom: 1),
                                        child: Text("lbl_11_months".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 22),
                                  child: Row(children: [
                                    Text("lbl_birthdate".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding: getPadding(left: 19, top: 1),
                                        child: Text("lbl_12_3_2022".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 24),
                                  child: Row(children: [
                                    Text("lbl_weight".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding: getPadding(left: 22),
                                        child: Text("lbl_15kg".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 23),
                                  child: Row(children: [
                                    Text("lbl_height".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding:
                                            getPadding(left: 23, bottom: 1),
                                        child: Text("lbl_50cm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 23),
                                  child: Row(children: [
                                    Text("msg_treating_doctor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding:
                                            getPadding(left: 22, bottom: 1),
                                        child: Text("lbl_dr_omar_youssif".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 22),
                                  child: Row(children: [
                                    Text("lbl_started_in".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding: getPadding(left: 20, top: 1),
                                        child: Text("lbl_12_12_2022".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Padding(
                                  padding: getPadding(left: 41, top: 22),
                                  child: Row(children: [
                                    Text("lbl_last_time".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.32))),
                                    Padding(
                                        padding: getPadding(left: 16, top: 1),
                                        child: Text("lbl_12_1_2023".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium15
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.3))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Padding(
                              //         padding: getPadding(top: 22),
                              //         child: GestureDetector(onTap: ()=>Get.to(WriteYourReportScreen()),
                              //           child: Text("msg_edit_information".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle.txtInterSemiBold16
                              //                   .copyWith(
                              //                       letterSpacing:
                              //                           getHorizontalSize(
                              //                               0.32))),
                              //         ))),
                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Padding(
                              //         padding: getPadding(top: 4),
                              //         child: SizedBox(
                              //             width: getHorizontalSize(126),
                              //             child: Divider(
                              //                 height: getVerticalSize(1),
                              //                 thickness: getVerticalSize(1),
                              //                 color: ColorConstant.gray500)))),
                              SizedBox(
                                height: getHorizontalSize(20),
                              )
                            ]))))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
