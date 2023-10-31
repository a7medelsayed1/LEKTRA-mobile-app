import '../../controllers/your_report_doctor_controller.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_subtitle.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import 'package:ahmed_s_application4/core/app_export.dart';
import 'package:ahmed_s_application4/core/utils/validation_functions.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class YourReportDoctorScreen extends GetWidget<YourReportDoctorController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    onTapCreate() {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Report Created Successfully!')
      ));
      Get.back();
    }
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back,color: ColorConstant.indigo900,),
                  onPressed: () => Get.back(),
                ),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(90),
                    width: getHorizontalSize(120),
                    imagePath: ImageConstant.imgLogo23)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                        getPadding(left: 39, top: 37, right: 39, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(bottom: 30),
                                child: Text("lbl_new_report".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold35.copyWith(
                                        letterSpacing: getHorizontalSize(0.7))),
                              ),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                  YourReportDoctorController().groupFortyEightController,
                                  hintText: "lbl_child_name".tr,
                                  margin: getMargin(top: 12),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  margin: getMargin(top: 50),
                                  controller:
                                  YourReportDoctorController().groupFortyFourController,
                                  hintText: "lbl_parents_name".tr,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller:
                                YourReportDoctorController().groupFortyTwoController,
                                hintText: "lbl_identity2".tr,
                              ),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller:
                                YourReportDoctorController().groupFortyTwoController,
                                hintText: "lbl_blood_type3".tr,
                              ),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                maxLines: 4,
                                height: getHorizontalSize(70),
                                focusNode: FocusNode(),
                                controller:
                                YourReportDoctorController().groupFortyTwoController,
                                hintText: "lbl_diagnostics".tr,

                              ),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller:
                                YourReportDoctorController().groupFortyTwoController,
                                hintText: "lbl_age2".tr,),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: YourReportDoctorController().languageTwoController,
                                hintText: "lbl_started_in3".tr,),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: YourReportDoctorController().groupFortyController,
                                  hintText: "lbl_add_updates".tr,
                                  textInputAction: TextInputAction.done),
                              SizedBox(
                                height: getHorizontalSize(20),
                              ),
                              Container(
                                  padding: getPadding(
                                      left: 27, top: 0, right: 27, bottom: 0),
                                height: getHorizontalSize(60),
                                  decoration: AppDecoration.outlineGray500
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder15),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                            getPadding(top: 0, bottom: 0),
                                            child: Text("lbl_add_images".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold14
                                                    )),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMinimize,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(right: 5))
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(56),
                                  text: "lbl_create".tr,
                                  margin:
                                  getMargin(left: 47, top: 48, right: 47),
                                  onTap: onTapCreate)
                            ]))))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
