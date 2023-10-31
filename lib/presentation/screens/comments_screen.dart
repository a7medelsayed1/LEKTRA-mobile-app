import '../../../core/app_export.dart';
import 'package:flutter/material.dart';
import '../../controllers/comments_controller.dart';
import '../widgets/custom_text_form_field.dart';

class CommentsScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    List images = [ ImageConstant.imgEllipse131, ImageConstant.imgEllipse132, ImageConstant.imgEllipse133, ImageConstant
        .imgEllipse134, ImageConstant.imgEllipse131];
    List names=['Hanaa Adel','Adel Ali','Mohamed Ali','Eman Adel','Hanaa Adel'];
    List comments =[  "msg_can_you_tell_me".tr,"msg_i_was_had_tha_same".tr,"msg_my_boy_his_status".tr,"msg_i_was_had_tha_same2"
        .tr,"msg_i_was_had_tha_same".tr];
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.gray200,
          body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    width: double.maxFinite,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height - 24,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: double.maxFinite,
                                          padding: getPadding(
                                              left: 24,
                                              top: 12,
                                              right: 24,
                                              bottom: 12),
                                          margin: getMargin(bottom: 8),
                                          decoration: AppDecoration
                                              .outlineGray800,
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 7, bottom: 6),
                                                child: Text("Comments".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold12Black900)),
                                          ])),
                                      Expanded(
                                        child: Container(
                                          child: ListView.separated(
                                            itemBuilder: (_, index) =>
                                                Container(
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 36,
                                                          top: 6,
                                                          right: 72),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            CircleAvatar(
                                                              child: Expanded(
                                                                child: CustomImageView(
                                                                  imagePath:images[index],
                                                                ),
                                                              ),
                                                              backgroundColor:
                                                              ColorConstant
                                                                  .gray200,
                                                              radius: getHorizontalSize(
                                                                  25),
                                                            ),
                                                            Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Container(
                                                                        margin: getMargin(
                                                                          left: 6,
                                                                        ),
                                                                        padding: getPadding(
                                                                            left: 13,
                                                                            top: 5,
                                                                            right: 13,
                                                                            bottom: 5),
                                                                        decoration: AppDecoration
                                                                            .fillWhiteA700
                                                                            .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder15),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                            children: [
                                                                              Padding(
                                                                                  padding:
                                                                                  getPadding(
                                                                                      top:
                                                                                      4),
                                                                                  child: Text(
                                                                                      names[index],
                                                                                      overflow:
                                                                                      TextOverflow
                                                                                          .ellipsis,
                                                                                      textAlign:
                                                                                      TextAlign
                                                                                          .left,
                                                                                      style: AppStyle
                                                                                          .txtInterSemiBold12Black900)),
                                                                              Padding(
                                                                                  padding:
                                                                                  getPadding(
                                                                                      top:
                                                                                      3,
                                                                                      right:
                                                                                      4,
                                                                                      bottom:
                                                                                      10),
                                                                                  child: Text(
                                                                                      comments[index],
                                                                                      maxLines:
                                                                                      null,
                                                                                      textAlign:
                                                                                      TextAlign
                                                                                          .left,
                                                                                      style: AppStyle
                                                                                          .txtInterRegular12Black900))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 8,
                                                                            top: 9),
                                                                        child: Text(
                                                                            "msg_2h_like"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtInterSemiBold12Gray70001)),
                                                                  ],
                                                                ))
                                                          ])),
                                                ),
                                            itemCount: 5,
                                            separatorBuilder: (_, index) =>
                                                SizedBox(
                                                  height: getHorizontalSize(
                                                      8),),
                                          ),
                                        ),
                                      ),

                                      ]),
                              ),
                              Padding(
                                padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                child: Container(
                                    width: double.maxFinite,
                                    // margin: getMargin(top: 14),
                                    padding: getPadding(
                                        left: 10, top: 10, right: 10, bottom: 10),
                                    decoration: AppDecoration.outlineGray8001,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                              CommentsController().groupTenController,
                                              hintText: "msg_write_a_comment".tr,
                                              margin: getMargin(top: 1),
                                              textInputAction: TextInputAction.done),
                                        ),
                                        TextButton(onPressed: (){}, child: Text(
                                          'Send',style: TextStyle(
                                          color: ColorConstant.indigo900
                                        ),
                                        ))
                                      ],
                                    )),
                              ),
                            ],
                          )),
                    ]))
              ])),
        ));
  }

  onTapRectangle228() {
    Get.toNamed(AppRoutes.yourExperienceContainerScreen);
  }

  onTapImgEllipseFiftyTwo() {
    Get.toNamed(AppRoutes.parentProfileScreen);
  }

  onTapTxtView2morereplieOne() {
    Get.toNamed(AppRoutes.commentsOneScreen);
  }
}
