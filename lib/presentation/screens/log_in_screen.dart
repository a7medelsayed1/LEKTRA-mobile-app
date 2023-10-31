import 'package:ahmed_s_application4/presentation/screens/nav_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/validation_functions.dart';
import '../../models/api_response.dart';
import '../../models/user.dart';
import '../../models/user_services.dart';
import '/presentation/screens/sign_up_screen.dart';

import '../../controllers/log_in_controller.dart';
import '../../core/network/google_auth_helper.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/custom_text_form_field.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

import 'home_clean.dart';
// ignore_for_file: must_be_immutable
class LogInScreen extends StatefulWidget {
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isDoctor=Get.arguments;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loading = false;
  TextEditingController emailphoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void _loginUser() async {
    ApiResponse response = await parentLogin(emailphoneController.text, passwordController.text);
    if (response.error == null){
      _saveAndRedirectToHome(response.data as User);
    }
    else {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }

  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('userId', user.id ?? 0);
    Get.to(isDoctor?HomeParentsOneScreen():NavScreen(pageIndex: 0));}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray200,
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 49, top: 60, right: 49),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_log_in".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold35.copyWith(
                                letterSpacing: getHorizontalSize(0.7))),
                        Container(
                          margin: getMargin(top: 35,bottom: 20),
                          height: getHorizontalSize(60),
                          child: CustomTextFormField(

                              focusNode: FocusNode(),
                              controller: emailphoneController,
                              hintText: "lbl_email_phone".tr,
                              variant: TextFormFieldVariant.OutlineIndigo900,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                        ),
                        Container(
                          child: CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 24),
                              variant: TextFormFieldVariant.OutlineIndigo900,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                        ),
                        Padding(
                          padding: getPadding(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("msg_forget_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.24)))),
                              Obx(() => CustomCheckbox(
                                  alignment: Alignment.centerLeft,
                                  text: "lbl_remember_me".tr,
                                  iconSize: getHorizontalSize(16),
                                  value: LogInController().checkbox.value,
                                  margin: getMargin(top: 1),
                                  fontStyle: CheckboxFontStyle.InterRegular14,
                                  onChange: (value) {
                                    LogInController().checkbox.value = value;
                                  }
                                  )),
                            ],
                          ),
                        ),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "lbl_log_in".tr,
                            margin: getMargin(left: 37, top: 31, right: 37),onTap: onTapLogin,),
                        Padding(
                            padding: getPadding(top: 30,bottom: 20),
                            child: Text("lbl_or_sign_in_with".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12Indigo900
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.24)))),
                        GestureDetector(
                            onTap: () {
                              onTapRowgoogle();
                            },
                            child: Container(
                                margin: getMargin(top: 6),
                                padding: getPadding(
                                    left: 78, top: 8, right: 78, bottom: 8),
                                decoration: AppDecoration.outlineBlack900
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder15),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGoogle,
                                          height: getVerticalSize(30),
                                          width: getHorizontalSize(30),
                                          margin: getMargin(top: 12)),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 12, bottom: 8),
                                          child: Text(
                                              "msg_continue_with_google".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular12Black900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.24))))
                                    ]))),
                        Container(
                            margin: getMargin(top: 15),
                            padding: getPadding(
                                left: 78, top: 14, right: 78, bottom: 14),
                            decoration: AppDecoration.outlineBlack900
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFacebook,
                                      height: getVerticalSize(24),
                                      width: getHorizontalSize(23)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 6, bottom: 2),
                                      child: Text(
                                          "msg_continue_with_google".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular12Black900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.24))))
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapTxtImanewuser();
                            },
                            child: Padding(
                                padding: getPadding(top: 25, bottom: 5),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_i_m_a_new_user".tr,
                                          style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(20),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing:
                                                  getHorizontalSize(0.24))),
                                      TextSpan(
                                          text: "lbl_sing_up".tr,
                                          style: TextStyle(
                                              color: ColorConstant.indigo900,
                                              fontSize: getFontSize(20),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing:
                                                  getHorizontalSize(0.24)))
                                    ]),
                                    textAlign: TextAlign.left)))
                      ]))),
        ));
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        Get.to(NavScreen(pageIndex: 0,));
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtImanewuser() {

    Get.to(SignUpScreen(isDoctor: isDoctor));
  }
  onTapLogin() {
    print('$isDoctor');
    // Get.to(isDoctor?HomeParentsOneScreen():NavScreen(pageIndex: 0));
    _loginUser();

  }
}