import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/home_clean_widget.dart';
import 'clean_notification.dart';
import 'nearest_medical_center_page.dart';
import 'your_experience_page.dart';

// ignore_for_file: must_be_immutable
class HomeParentsCleanScreen extends GetWidget {
  const HomeParentsCleanScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: getVerticalSize(450),
                    width: double.maxFinite,
                    child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  height: getVerticalSize(473),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Container(
                                          height: getVerticalSize(430),
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(getSize(50)),bottomRight: Radius.circular(getSize(50)),),
                                              color: ColorConstant.indigo900
                                          ),
                                        ),
                                        Align(
                                            alignment:
                                            Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 10,
                                                    right: 23),
                                                child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      CustomAppBar(
                                                          height :getVerticalSize(80),

                                                          centerTitle:
                                                          true,
                                                          title: AppbarImage(
                                                              height: getVerticalSize(90),
                                                              width: getHorizontalSize(120),
                                                              imagePath: ImageConstant.imgLogoLight),
                                                          actions: [
                                                            AppbarImage(
                                                                height:
                                                                getVerticalSize(
                                                                    27),
                                                                width: getHorizontalSize(
                                                                    27),
                                                                svgPath: ImageConstant
                                                                    .imgNotification,
                                                                margin: getMargin(
                                                                    left:
                                                                    23,
                                                                    right:
                                                                    10,
                                                                    bottom:
                                                                    6),onTap: ()=>Get.to(CleanNotification()),)
                                                          ]),
                                                      Container(
                                                          margin:
                                                          getMargin(
                                                              left:
                                                              0,
                                                              top: 8,
                                                              right:
                                                              0),
                                                          padding:
                                                          getPadding(
                                                              left:
                                                              0,
                                                              top: 6,
                                                              right:
                                                              0,
                                                              bottom:
                                                              6),
                                                          decoration: AppDecoration
                                                              .outlineWhiteA700
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                          child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .min,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgSearch,
                                                                    height: getSize(
                                                                        24),
                                                                    width: getSize(
                                                                        24),
                                                                    margin:
                                                                    getMargin(top: 1,left: 12)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                        5,
                                                                        top:
                                                                        5,
                                                                        right :380,
                                                                        bottom:
                                                                        5),
                                                                    child: Text(
                                                                        "lbl_search".tr,
                                                                        overflow: TextOverflow.ellipsis,
                                                                        textAlign: TextAlign.left,
                                                                        style: AppStyle.txtInterMedium14.copyWith(letterSpacing: getHorizontalSize(0.28))))
                                                              ])),
                                                      Container(
                                                          height:
                                                          getVerticalSize(
                                                              250),
                                                          width:
                                                          getHorizontalSize(
                                                              400),
                                                          margin:
                                                          getMargin(
                                                              top:
                                                              16),
                                                          child: Stack(
                                                              alignment:
                                                              Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                 CarouselSlider.builder(
                                                                    options: CarouselOptions(
                                                                        height: getVerticalSize(250),
                                                                        autoPlay: true,
                                                                        viewportFraction: 1.0,
                                                                        scrollDirection: Axis.horizontal,
                                                                        onPageChanged: (index, reason) {
                                                                        }),
                                                                    itemCount:3,// HomeParentsOneController().homeParentsOneModelObj.value.sliderclarityne1ItemList.value.length,
                                                                    itemBuilder: (context, index, realIndex) {
                                                                     return Sliderclarityne1ItemWidget();
                                                                    }),

                                                              ]))
                                                    ])))
                                      ]))),

                        ])),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                        ),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color.fromRGBO(41, 47, 121, 1),
                          ),
                        ),
                      ),
                    ),
                    Container(

                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 24,
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: getVerticalSize(
                                  140,
                                ),
                                width: getHorizontalSize(
                                  69,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 28,
                                        ),
                                        child: Text(
                                          "lbl_hospitals".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtInterMedium14Indigo900,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: getPadding(
                                          left: 4,
                                          top: 5,
                                          right: 4,
                                          bottom: 3,
                                        ),
                                        decoration: AppDecoration.outlineIndigo900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(
                                                bottom: 58,
                                              ),
                                              color: ColorConstant.blueGray5007f,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder50,
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  60,
                                                ),
                                                width: getSize(
                                                  60,
                                                ),
                                                padding: getPadding(
                                                  all: 3,
                                                ),
                                                decoration: AppDecoration
                                                    .fillBluegray5007f
                                                    .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .circleBorder50,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse41,
                                                      height: getSize(
                                                        52,
                                                      ),
                                                      width: getSize(
                                                        52,
                                                      ),
                                                      radius:
                                                      BorderRadius.circular(
                                                        getHorizontalSize(
                                                          26,
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
                                  ],
                                ),
                              ),
                              onTap: ()=>Get.to(NearestMedicalCenterPage()),
                            ),
                            GestureDetector(
                              onTap: ()=>Get.to(NearestMedicalCenterPage()),
                              child: Container(
                                height: getVerticalSize(
                                  130,
                                ),
                                width: getHorizontalSize(
                                  69,
                                ),
                                margin: getMargin(
                                  left: 18,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 29,
                                        ),
                                        child: Text(
                                          "lbl_doctors".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtInterMedium14Indigo900,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: getPadding(
                                          left: 4,
                                          top: 5,
                                          right: 4,
                                          bottom: 5,
                                        ),
                                        decoration: AppDecoration.outlineIndigo900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(
                                                bottom: 58,
                                              ),
                                              color: ColorConstant.gray400C9,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder50,
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  60,
                                                ),
                                                width: getSize(
                                                  60,
                                                ),
                                                padding: getPadding(
                                                  all: 3,
                                                ),
                                                decoration: AppDecoration
                                                    .fillGray400c9
                                                    .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .circleBorder50,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse40,
                                                      height: getSize(
                                                        52,
                                                      ),
                                                      width: getSize(
                                                        52,
                                                      ),
                                                      radius:
                                                      BorderRadius.circular(
                                                        getHorizontalSize(
                                                          26,
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
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: getVerticalSize(
                                  130,
                                ),
                                width: getHorizontalSize(
                                  69,
                                ),
                                margin: getMargin(
                                  left: 18,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 28,
                                        ),
                                        child: Text(
                                          "Gellary",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtInterMedium14Indigo900,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: getPadding(
                                          left: 4,
                                          top: 5,
                                          right: 4,
                                          bottom: 5,
                                        ),
                                        decoration: AppDecoration.outlineIndigo900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(
                                                bottom: 58,
                                              ),
                                              color: ColorConstant.blueGray5007f,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder50,
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  60,
                                                ),
                                                width: getSize(
                                                  60,
                                                ),
                                                padding: getPadding(
                                                  all: 3,
                                                ),
                                                decoration: AppDecoration
                                                    .fillBluegray5007f
                                                    .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .circleBorder50,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: 'assets/images/Ellipse 35.png',
                                                      height: getSize(
                                                        52,
                                                      ),
                                                      width: getSize(
                                                        52,
                                                      ),
                                                      radius:
                                                      BorderRadius.circular(
                                                        getHorizontalSize(
                                                          26,
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
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: ()=>Get.to(YourExperiencePage(false,isDoctor: false,)),
                              child: Container(
                                height: getVerticalSize(
                                  130,
                                ),
                                width: getHorizontalSize(
                                  69,
                                ),
                                margin: getMargin(
                                  left: 18,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 29,
                                        ),
                                        child: Text(
                                          "lbl_posts".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                          AppStyle.txtInterMedium14Indigo900,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: getPadding(
                                          left: 4,
                                          top: 5,
                                          right: 4,
                                          bottom: 5,
                                        ),
                                        decoration: AppDecoration.outlineIndigo900
                                            .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: getMargin(
                                                bottom: 58,
                                              ),
                                              padding: getPadding(
                                                all: 3,
                                              ),
                                              decoration: AppDecoration
                                                  .fillIndigoA10096
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder50,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(
                                                      top: 1,
                                                    ),
                                                    color: ColorConstant
                                                        .indigoA10096,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder25,
                                                    ),
                                                    child: Container(
                                                      height: getSize(
                                                        52,
                                                      ),
                                                      width: getSize(
                                                        52,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillIndigoA10096
                                                          .copyWith(
                                                        borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder25,
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse4152x52,
                                                            height: getSize(
                                                              52,
                                                            ),
                                                            width: getSize(
                                                              52,
                                                            ),
                                                            radius: BorderRadius
                                                                .circular(
                                                              getHorizontalSize(
                                                                26,
                                                              ),
                                                            ),
                                                            alignment:
                                                            Alignment.center,
                                                          ),
                                                        ],
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
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                130,
                              ),
                              width: getHorizontalSize(
                                69,
                              ),
                              margin: getMargin(
                                left: 18,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        bottom: 29,
                                      ),
                                      child: Text(
                                        "For you",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                        AppStyle.txtInterMedium14Indigo900,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(
                                        left: 4,
                                        top: 5,
                                        right: 4,
                                        bottom: 5,
                                      ),
                                      decoration: AppDecoration.outlineIndigo900
                                          .copyWith(
                                        borderRadius:
                                        BorderRadiusStyle.roundedBorder33,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                              bottom: 58,
                                            ),
                                            color: ColorConstant.gray400C9,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder50,
                                            ),
                                            child: Container(
                                              height: getSize(
                                                60,
                                              ),
                                              width: getSize(
                                                60,
                                              ),
                                              padding: getPadding(
                                                all: 3,
                                              ),
                                              decoration: AppDecoration
                                                  .fillGray400c9
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder50,
                                              ),
                                              child: Stack(
                                                children: [
                                                  CustomImageView(
                                                    imagePath: 'assets/images/Ellipse 43.png',
                                                    height: getSize(
                                                      52,
                                                    ),
                                                    width: getSize(
                                                      52,
                                                    ),
                                                    radius:
                                                    BorderRadius.circular(
                                                      getHorizontalSize(
                                                        26,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          291,
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
                        top: 15,
                      ),
                      child: Text(
                        "msg_advices_about_caring".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold16,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 14,
                        bottom: getHorizontalSize(50)
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width:double.maxFinite,
                              margin: getMargin(
                                left: 15,
                                right: 15,
                              ),
                              child: Text(
                                "msg_your_baby_is_like".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold13,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}