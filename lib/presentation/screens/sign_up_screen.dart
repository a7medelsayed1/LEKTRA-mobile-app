import '/presentation/screens/log_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/network/google_auth_helper.dart';
import '../../models/api_response.dart';
import '../../models/user.dart';
import '../../models/user_services.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import '/core/app_export.dart';
import '/core/utils/validation_functions.dart';
import 'package:flutter/material.dart';
import 'doctor_calender.dart';
import 'home_clean.dart';
import 'nav_screen.dart';

class SignUpScreen extends StatefulWidget {


  SignUpScreen({required this.isDoctor});
  bool isDoctor;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loading = false;
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordConfirmationController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  void _registerUser () async {
    ApiResponse response = await parentRegister(nameController.text, emailController.text, passwordController.text);
    if(response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    }
    else {
      setState(() {
        loading = !loading;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}')
      ));
    }
  }

  // Save and redirect to home
  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token!);
    await pref.setInt('userId', user.id ?? 0);
    Get.to(widget.isDoctor?HomeParentsOneScreen():NavScreen(pageIndex: 0,)); }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray200,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 49, top: 74, right: 49),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_sign_up".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold35.copyWith(
                                  letterSpacing: getHorizontalSize(0.7))),
                          Container(
                            margin: getMargin(top: 35,bottom: 20),
                            // height: getHorizontalSize(60),
                            child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailController,
                                hintText: "lbl_email_phone".tr,
                                // margin: getMargin(top: 48),
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
                                controller: nameController,
                                hintText: "lbl_full_name".tr,
                                // margin: getMargin(top: 24),
                                variant: TextFormFieldVariant.OutlineIndigo900,
                                validator: (value) {
                                  if (!isText(value)) {
                                    return "Please enter valid text";
                                  }
                                  return null;
                                }),
                          ),
                          Container(
                            margin: getMargin(top: 20,bottom: 20),
                            // height: getHorizontalSize(60),
                            child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: addressController,
                                hintText: "Phone Number",
                                // margin: getMargin(top: 24),
                                variant: TextFormFieldVariant.OutlineIndigo900),
                          ),
                          Container(
                            child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                // margin: getMargin(top: 24),
                                variant: TextFormFieldVariant.OutlineIndigo900,
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
                          Container(
                            margin: getMargin(top: 20,bottom: 20),
                            // height: getHorizontalSize(60),
                            child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordConfirmationController,
                                hintText: "msg_confirm_password".tr,
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
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "lbl_sign_up".tr,
                              margin: getMargin(left: 37, top: 32, right: 37),
                              onTap: ()=>onTapSignup()),
                          Padding(
                              padding: getPadding(top: 33),
                              child: Text("lbl_or_sign_up_with".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.24)))),
                          CustomButton(
                              height: getVerticalSize(52),
                              text: "msg_continue_with_google".tr,
                              margin: getMargin(top: 6),
                              variant: ButtonVariant.OutlineBlack900,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingT18,
                              fontStyle: ButtonFontStyle.InterRegular12,
                              fontSize: 20,
                              prefixWidget: Container(
                                  margin: getMargin(right: 8),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: onTapContinuewithgoogle),
                          CustomButton(
                              height: getVerticalSize(52),
                              text: "msg_continue_with_google".tr,
                              margin: getMargin(top: 8),
                              variant: ButtonVariant.OutlineBlack900,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingT18,
                              fontStyle: ButtonFontStyle.InterRegular12,
                              fontSize: 20,
                              prefixWidget: Container(
                                  margin: getMargin(right: 8),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFacebook))),
                          GestureDetector(
                            onTap: ()=>Get.to(LogInScreen(),arguments: widget.isDoctor),
                            child: Padding(
                                padding: getPadding(top: 18, bottom: 5),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_i_m_already_a_member2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.gray60001,
                                              fontSize: getFontSize(20),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing:
                                                  getHorizontalSize(0.24))),
                                      TextSpan(
                                          text: "Sign in",
                                          style: TextStyle(
                                              color: ColorConstant.indigo900,
                                              fontSize: getFontSize(20),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing:
                                                  getHorizontalSize(0.24)))
                                    ]),
                                    textAlign: TextAlign.left)),
                          )
                        ])))));
  }

  onTapSignup() {
    _registerUser();
  }

  onTapContinuewithgoogle() async {
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
}
