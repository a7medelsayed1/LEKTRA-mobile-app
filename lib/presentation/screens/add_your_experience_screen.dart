import '/presentation/screens/nav_screen.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/size_utils.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_subtitle.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import 'your_experience_page.dart';

class AddYourExperienceScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController postController=TextEditingController();
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(90),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleftGray500,
                    margin: getMargin(left: 24, top: 13, bottom: 12),
                    onTap: onTapArrowleft1),
                title: Center(
                  child: AppbarSubtitle(
                      text: "lbl_create_post".tr, margin: getMargin(left: 8)),
                ),
                actions: [
                  CustomButton(
                    onTap: ()=>Get.to(YourExperiencePage(true,isDoctor: false,)),
                      height: getVerticalSize(27),
                      width: getHorizontalSize(62),
                      text: "lbl_post".tr,
                      margin: getMargin(left: 24, top: 9, right: 24, bottom: 9),
                      variant: ButtonVariant.FillIndigo900,
                      fontStyle: ButtonFontStyle.WorkSansRomanSemiBold14WhiteA700)
                ],
                styleType: Style.bgFillGray300),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Padding(
                      padding: getPadding(top: 1),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray50001),
                            Padding(
                                padding: getPadding(left: 24, top: 27),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: 'assets/images/no_image.png',
                                      height: getVerticalSize(60),
                                      width: getHorizontalSize(50),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(18))),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 10, bottom: 8),
                                      child: Text("Mohamed Magdy".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold13))
                                ])),
                            Padding(
                                padding: getPadding(left: 24, top: 26,right: 24),
                                child:TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines:16,
                                  controller: postController,
                                  cursorColor: ColorConstant.indigo900,
                                  decoration: InputDecoration(
                                      hintText: "msg_add_your_experience".tr,
                                      border: InputBorder.none
                                  ),
                                )),
                          ])),
                )),
           ));
  }


  onTapTxtAddyourexperienOne() {
    Get.toNamed(AppRoutes.postYourExperienceScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
