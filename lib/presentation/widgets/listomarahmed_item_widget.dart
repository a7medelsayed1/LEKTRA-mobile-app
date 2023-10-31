import 'package:ahmed_s_application4/presentation/screens/comments_screen.dart';

import '../../../../core/app_export.dart';
import 'package:flutter/material.dart';

import '../screens/your_experience_page.dart';

// ignore: must_be_immutable
class ListomarahmedItemWidget extends StatelessWidget {
  ListomarahmedItemWidget(this.index);
  final int index;
  List images = [ ImageConstant.imgEllipse131, ImageConstant.imgEllipse132, ImageConstant.imgEllipse133, ImageConstant
      .imgEllipse134, ImageConstant.imgEllipse131,'assets/images/no_image.png'];
  List names=['Hanaa Adel','Adel Ali','Mohamed Ali','Eman Adel','Hanaa Adel','Mohamed Magdy'];
  List comments =[  "msg_can_you_tell_me".tr,"msg_i_was_had_tha_same".tr,"msg_my_boy_his_status".tr,"msg_i_was_had_tha_same2"
      .tr,"msg_i_was_had_tha_same".tr,'hi there'];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: Container(
          padding: getPadding(
            left: 9,
            top: 12,
            right: 9,
            bottom: 12,
          ),
          decoration: AppDecoration.outlineGray400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 6,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorConstant.gray200,
                      child: Expanded(
                        child: CustomImageView(
                          imagePath: images[index+1],
                          // height: getVerticalSize(
                          //   70,
                          // ),
                          // width: getHorizontalSize(
                          //   70,
                          // ),
                          // radius: BorderRadius.circular(
                          //   getHorizontalSize(
                          //     18,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Text(
                              names[index+1],
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold13,
                            ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_jan_2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray700,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "7:45 AM".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray700,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                  top: 15,
                  right: 11,
                ),
                child: Text(
                  comments[index+1],
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold13Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                  top: 8,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: GestureDetector(
                          onTap: ()=>Get.to(CommentsScreen()),
                          child: Text(
                            "lbl_reply".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium16Indigo600dd,

                          ),
                        ),
                      ),
                    ),
                    Container(

                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_3".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.32,
                                ),
                              ),
                            ),
                          ),
                          Icon(Icons.comment_outlined,color: ColorConstant.indigo900,size: getHorizontalSize(30)),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 2,
                              bottom: 1,
                            ),
                            child: Text(
                                "lbl_6".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium16
                            ),
                          ),
                          Icon(Icons.thumb_up_outlined,color: ColorConstant.indigo900,size: getHorizontalSize(30)),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 2,
                              bottom: 1,
                            ),
                            child: Text(
                                "lbl_0".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium16
                            ),),
                          Icon(Icons.thumb_down_outlined,color: ColorConstant.indigo900,size: getHorizontalSize(30)),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
