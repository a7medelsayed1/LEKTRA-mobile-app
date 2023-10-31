
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

class MyFileScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(89),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(25),
                    width: getSize(25),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 39, top: 15, bottom: 15),
                    onTap: onTapArrowleft12),
                title: Padding(
                    padding: getPadding(left: 23),
                    child: Text("lbl_my_file".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold20Indigo900))),
            body: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height,
                child: Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(top: 6),
                                child: IntrinsicWidth(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle31106x79,
                                          height: getVerticalSize(106),
                                          width: getHorizontalSize(79),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15)),
                                          margin: getMargin(top: 21, bottom: 21)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle29106x79,
                                          height: getVerticalSize(106),
                                          width: getHorizontalSize(79),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15)),
                                          margin: getMargin(
                                              left: 18, top: 21, bottom: 21)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle26148x103,
                                          height: getVerticalSize(148),
                                          width: getHorizontalSize(103),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15)),
                                          margin: getMargin(left: 17)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle30106x79,
                                          height: getVerticalSize(106),
                                          width: getHorizontalSize(79),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15)),
                                          margin: getMargin(
                                              left: 17, top: 21, bottom: 21)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle33106x79,
                                          height: getVerticalSize(106),
                                          width: getHorizontalSize(79),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15)),
                                          margin: getMargin(
                                              left: 17, top: 21, bottom: 21))
                                    ])))),
                        Padding(
                            padding: getPadding(left: 17, top: 32, right: 16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowleftIndigo90038x36,
                                      height: getVerticalSize(38),
                                      width: getHorizontalSize(36),
                                      margin: getMargin(top: 117, bottom: 119)),
                                  Container(
                                      height: getSize(275),
                                      width: getSize(275),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgRectangle5,
                                                height: getSize(275),
                                                width: getSize(275),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(15)),
                                                alignment: Alignment.center),

                                          ])),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getVerticalSize(38),
                                      width: getHorizontalSize(36),
                                      margin: getMargin(top: 117, bottom: 119))
                                ])),
                        Padding(
                            padding: getPadding(top: 25),
                            child: Text("lbl_description".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14)),
                        Padding(
                            padding: getPadding(left: 52, top: 14, right: 52),
                            child: Text("msg_retinoblastoma_can".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12Gray70001)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(top: 12, right: 77),
                                child: Text("lbl_edit".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold12Gray50002))),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUploadGray500,
                                  height: getVerticalSize(33),
                                  width: getHorizontalSize(30),
                                  margin: getMargin(top: 7)),
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Text("lbl_upload_photo".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold12Gray500)),
                            ],
                          ),
                        ),

                      ]),
                )),
           ));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
