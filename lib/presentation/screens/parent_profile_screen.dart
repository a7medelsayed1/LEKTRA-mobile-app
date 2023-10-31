import 'package:ahmed_s_application4/presentation/screens/nav_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/app_export.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class ParentProfileScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 49,
                leading: Padding(
                  padding:EdgeInsets.only(top: 5),
                  child: AppbarImage(
                      height: getSize(100),
                      width: getSize(100),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 24,),
                      onTap: onTapArrowleft3),
                ),
                styleType: Style.bgOutlineGray50001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 32),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(170),
                                  width: double.maxFinite,
                                  padding:getPadding(left: 20,right: 20) ,
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(top: 90),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(
                                                              "Mohamed Magdy",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterSemiBold16Black900

                                                          )),

                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomButton(

                                                      height:
                                                          getVerticalSize(10),
                                                      width:
                                                          getHorizontalSize(130),
                                                      text: "lbl_home".tr,
                                                  onTap: ()=>Get.to(NavScreen(pageIndex: 0)),),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(15),
                                                      width:
                                                          getHorizontalSize(130),
                                                      text: "lbl_add_post".tr,
                                                      onTap: ()=>Get.to(NavScreen(pageIndex: 3)),

                                                  )])),
                                        CustomImageView(
                                            imagePath: 'assets/images/no_image.png',
                                            height: getSize(122),
                                            width: getSize(122),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(61)),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(left: 10))
                                      ])),

                              Container(
                                  // height: getVerticalSize(684),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 15),

                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillGray20001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL50),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray400),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24, top: 8),
                                                          child: Row(children: [
                                                            CircleAvatar(
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                  'assets/images/no_image.png',
                                                                  // radius: BorderRadius
                                                                  //     .circular(
                                                                  //     getHorizontalSize(
                                                                  //         21))
                                                              ),
                                                              backgroundColor: ColorConstant.gray200,
                                                            ),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    left: 8,
                                                                    top: 7,
                                                                    bottom:
                                                                    8),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Text(
                                                                          "Mohamed Magdy"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterSemiBold12Black900
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.24))),
                                                                      Text(
                                                                          "Just now"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterMedium8
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.16)))
                                                                    ]))
                                                          ])),
                                                      Align(
                                                          // alignment: Alignment.centerLeft,
                                                          child: Container(
                                                            width: double.maxFinite,
                                                              margin: getMargin(
                                                                  left: 24,
                                                                  top: 8,
                                                                  right: 24),
                                                              padding:
                                                                  getPadding(
                                                                      left: 14,
                                                                      top: 10,
                                                                      right: 14,
                                                                      bottom:
                                                                          10),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineGray50001,
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "hi there",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtInterMedium13))
                                                                  ]))),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 24, top: 8),
                                                      //     child: Row(children: [
                                                      //       CircleAvatar(
                                                      //         child: Expanded(
                                                      //           child: CustomImageView(
                                                      //               imagePath:
                                                      //               ImageConstant
                                                      //                   .imgEllipse52122x122,
                                                      //               radius: BorderRadius
                                                      //                   .circular(
                                                      //                   getHorizontalSize(
                                                      //                       21))),
                                                      //         ),
                                                      //       ),
                                                      //       Padding(
                                                      //           padding:
                                                      //           getPadding(
                                                      //               left: 8,
                                                      //               top: 7,
                                                      //               bottom:
                                                      //               8),
                                                      //           child: Column(
                                                      //               crossAxisAlignment:
                                                      //               CrossAxisAlignment
                                                      //                   .start,
                                                      //               mainAxisAlignment:
                                                      //               MainAxisAlignment
                                                      //                   .start,
                                                      //               children: [
                                                      //                 Text(
                                                      //                     "msg_mohamed_ali_ebada"
                                                      //                         .tr,
                                                      //                     overflow: TextOverflow
                                                      //                         .ellipsis,
                                                      //                     textAlign: TextAlign
                                                      //                         .left,
                                                      //                     style: AppStyle
                                                      //                         .txtInterSemiBold12Black900
                                                      //                         .copyWith(letterSpacing: getHorizontalSize(0.24))),
                                                      //                 Text(
                                                      //                     "lbl_2d"
                                                      //                         .tr,
                                                      //                     overflow: TextOverflow
                                                      //                         .ellipsis,
                                                      //                     textAlign: TextAlign
                                                      //                         .left,
                                                      //                     style: AppStyle
                                                      //                         .txtInterMedium8
                                                      //                         .copyWith(letterSpacing: getHorizontalSize(0.16)))
                                                      //               ]))
                                                      //     ])),
                                                      // Align(
                                                      //     alignment: Alignment
                                                      //         .center,
                                                      //     child: Container(
                                                      //         margin: getMargin(
                                                      //             left: 24,
                                                      //             top: 8,
                                                      //             right: 24),
                                                      //         padding:
                                                      //             getPadding(
                                                      //                 left: 16,
                                                      //                 top: 13,
                                                      //                 right: 16,
                                                      //                 bottom:
                                                      //                     13),
                                                      //         decoration:
                                                      //             AppDecoration
                                                      //                 .outlineGray50001,
                                                      //         child: Column(
                                                      //             mainAxisAlignment:
                                                      //                 MainAxisAlignment
                                                      //                     .center,
                                                      //             children: [
                                                      //               Padding(
                                                      //                   padding: getPadding(
                                                      //                       top:
                                                      //                           3),
                                                      //                   child: Text(
                                                      //                       "msg_i_had_an_experience2"
                                                      //                           .tr,
                                                      //                       maxLines:
                                                      //                           null,
                                                      //                       textAlign:
                                                      //                           TextAlign.left,
                                                      //                       style: AppStyle.txtInterMedium13)),
                                                      //               Padding(
                                                      //                   padding: getPadding(
                                                      //                       top:
                                                      //                           2),
                                                      //                   child: Text(
                                                      //                       "msg_i_had_an_experience"
                                                      //                           .tr,
                                                      //                       maxLines:
                                                      //                           null,
                                                      //                       textAlign:
                                                      //                           TextAlign.left,
                                                      //                       style: AppStyle.txtInterMedium13))
                                                      //             ]))),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 24, top: 8),
                                                      //     child: Row(children: [
                                                      //       CircleAvatar(
                                                      //         child: Expanded(
                                                      //           child: CustomImageView(
                                                      //               imagePath:
                                                      //               ImageConstant
                                                      //                   .imgEllipse52122x122,
                                                      //               radius: BorderRadius
                                                      //                   .circular(
                                                      //                       getHorizontalSize(
                                                      //                           21))),
                                                      //         ),
                                                      //       ),
                                                      //       Padding(
                                                      //           padding:
                                                      //               getPadding(
                                                      //                   left: 8,
                                                      //                   top: 7,
                                                      //                   bottom:
                                                      //                       8),
                                                      //           child: Column(
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Text(
                                                      //                     "msg_mohamed_ali_ebada"
                                                      //                         .tr,
                                                      //                     overflow: TextOverflow
                                                      //                         .ellipsis,
                                                      //                     textAlign: TextAlign
                                                      //                         .left,
                                                      //                     style: AppStyle
                                                      //                         .txtInterSemiBold12Black900
                                                      //                         .copyWith(letterSpacing: getHorizontalSize(0.24))),
                                                      //                 Text(
                                                      //                     "lbl_2d"
                                                      //                         .tr,
                                                      //                     overflow: TextOverflow
                                                      //                         .ellipsis,
                                                      //                     textAlign: TextAlign
                                                      //                         .left,
                                                      //                     style: AppStyle
                                                      //                         .txtInterMedium8
                                                      //                         .copyWith(letterSpacing: getHorizontalSize(0.16)))
                                                      //               ]))
                                                      //     ])),
                                                      // Align(
                                                      //     alignment:
                                                      //         Alignment.center,
                                                      //     child: Container(
                                                      //         margin: getMargin(
                                                      //             left: 24,
                                                      //             top: 8,
                                                      //             right: 24),
                                                      //         padding:
                                                      //         getPadding(
                                                      //             left: 16,
                                                      //             top: 13,
                                                      //             right: 16,
                                                      //             bottom:
                                                      //             13),
                                                      //         decoration: AppDecoration.outlineGray50001,
                                                      //         child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                      //           Padding(padding: getPadding(top: 3, right: 2), child: Text("msg_i_had_an_experience2".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterMedium13)),
                                                      //           Padding(padding: getPadding(top: 2, right: 2), child: Text("msg_i_had_an_experience".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterMedium13))
                                                      //         ])))
                                                    ]))),

                                      ]))
                            ])))),
           ));
  }


  onTapAddpost() {
    Get.toNamed(AppRoutes.addYourExperienceScreen);
  }

  onTapArrowleft3() {
    Get.back();
  }
}
