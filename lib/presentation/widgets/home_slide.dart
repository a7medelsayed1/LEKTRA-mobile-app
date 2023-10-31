// import 'package:ahmed_s_application4/core/app_export.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../../core/utils/color_constant.dart';
// import '../../core/utils/image_constant.dart';
// import '../../core/utils/size_utils.dart';
// import '../../theme/app_decoration.dart';
// import '../screens/home_patient_new.dart';
// import 'custom_image_view.dart';
//
// class SliderclarityneItemWidget extends StatelessWidget {
//   SliderclarityneItemWidget(this.sliderclarityneItemModelObj);
//   SliderclarityneItemModel sliderclarityneItemModelObj;
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Card(
//         clipBehavior: Clip.antiAlias,
//         elevation: 0,
//         margin: getMargin(
//           top: 130,
//           right: 785,
//           bottom: 39,
//         ),
//         color: ColorConstant.whiteA700,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusStyle.circleBorder44,
//         ),
//         child: Container(
//           height: getVerticalSize(
//             204,
//           ),
//           width: getHorizontalSize(
//             345,
//           ),
//           decoration: AppDecoration.fillWhiteA700.copyWith(
//             borderRadius: BorderRadiusStyle.circleBorder44,
//           ),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               CustomImageView(
//                 svgPath: ImageConstant.imgClaritynewsolid,
//                 height: getSize(
//                   30,
//                 ),
//                 width: getSize(
//                   30,
//                 ),
//                 alignment: Alignment.topLeft,
//                 margin: getMargin(
//                   top: 14,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   height: getVerticalSize(
//                     202,
//                   ),
//                   width: getHorizontalSize(
//                     299,
//                   ),
//                   child: Stack(
//                     alignment: Alignment.bottomRight,
//                     children: [
//                       CustomImageView(
//                         imagePath: ImageConstant.imgDoctorpresenti,
//                         height: getVerticalSize(
//                           159,
//                         ),
//                         width: getHorizontalSize(
//                           101,
//                         ),
//                         alignment: Alignment.bottomLeft,
//                       ),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Padding(
//                           padding: getPadding(
//                             bottom: 83,
//                           ),
//                           child: SizedBox(
//                             width: getHorizontalSize(
//                               176,
//                             ),
//                             child: Divider(
//                               height: getVerticalSize(
//                                 1,
//                               ),
//                               thickness: getVerticalSize(
//                                 1,
//                               ),
//                               color: ColorConstant.gray400,
//                               endIndent: getHorizontalSize(
//                                 20,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Padding(
//                           padding: getPadding(
//                             right: 2,
//                             bottom: 53,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "lbl_view".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.justify,
//                                 style: AppStyle.txtInterMedium6.copyWith(
//                                   letterSpacing: getHorizontalSize(
//                                     0.12,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: getPadding(
//                                   top: 2,
//                                 ),
//                                 child: Divider(
//                                   height: getVerticalSize(
//                                     1,
//                                   ),
//                                   thickness: getVerticalSize(
//                                     1,
//                                   ),
//                                   color: ColorConstant.gray400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Container(
//                           width: getHorizontalSize(
//                             226,
//                           ),
//                           margin: getMargin(
//                             top: 8,
//                           ),
//                           child: RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: "lbl_hay".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.yellow700,
//                                     fontSize: getFontSize(
//                                       25,
//                                     ),
//                                     fontFamily: 'Denk One',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: " ",
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       12,
//                                     ),
//                                     fontFamily: 'Denk One',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: "lbl".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.yellow700,
//                                     fontSize: getFontSize(
//                                       12,
//                                     ),
//                                     fontFamily: 'Denk One',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: " ",
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       12,
//                                     ),
//                                     fontFamily: 'Denk One',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: "msg_natural_light_is".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       12,
//                                     ),
//                                     fontFamily: 'Inter',
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.justify,
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Container(
//                           width: getHorizontalSize(
//                             168,
//                           ),
//                           margin: getMargin(
//                             bottom: 55,
//                           ),
//                           child: RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: "msg_for_more_follow_up2".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       10,
//                                     ),
//                                     fontFamily: 'Inter',
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: "msg_dr_anwar_shams".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       10,
//                                     ),
//                                     fontFamily: 'Inter',
//                                     fontWeight: FontWeight.w700,
//                                     decoration: TextDecoration.underline,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                       ),
//                       CustomImageView(
//                         svgPath: ImageConstant.imgClockYellow700,
//                         height: getVerticalSize(
//                           31,
//                         ),
//                         width: getHorizontalSize(
//                           40,
//                         ),
//                         alignment: Alignment.topLeft,
//                         margin: getMargin(
//                           left: 58,
//                         ),
//                       ),
//                       CustomImageView(
//                         svgPath: ImageConstant.imgLocationGray400,
//                         height: getVerticalSize(
//                           7,
//                         ),
//                         width: getHorizontalSize(
//                           6,
//                         ),
//                         alignment: Alignment.bottomLeft,
//                         margin: getMargin(
//                           left: 122,
//                           bottom: 67,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   height: getVerticalSize(
//                     8,
//                   ),
//                   margin: getMargin(
//                     bottom: 19,
//                   ),
//                   child: SmoothIndicator(
//                     offset: 0,
//                     count: 3,
//                     // size: Size.zero,
//                     effect: ScrollingDotsEffect(
//                       spacing: 14,
//                       activeDotColor: ColorConstant.indigo700,
//                       dotHeight: getVerticalSize(
//                         8,
//                       ),
//                       dotWidth: getHorizontalSize(
//                         8,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
