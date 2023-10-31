// import 'package:ahmed_s_application4/core/app_export.dart';
// import 'package:ahmed_s_application4/presentation/screens/home_parents_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class SliderfileItemWidget extends StatelessWidget {
//   SliderfileItemWidget(SliderfileItemModel model);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Card(
//         clipBehavior: Clip.antiAlias,
//         elevation: 0,
//         margin: getMargin(
//           left: 784,
//           top: 130,
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
//                 svgPath: ImageConstant.imgFile,
//                 height: getVerticalSize(
//                   13,
//                 ),
//                 width: getHorizontalSize(
//                   28,
//                 ),
//                 alignment: Alignment.topLeft,
//                 margin: getMargin(
//                   top: 23,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   height: getVerticalSize(
//                     204,
//                   ),
//                   width: getHorizontalSize(
//                     297,
//                   ),
//                   child: Stack(
//                     alignment: Alignment.topRight,
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
//                         alignment: Alignment.topRight,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             CustomImageView(
//                               imagePath: ImageConstant.imgRectangle73,
//                               height: getVerticalSize(
//                                 99,
//                               ),
//                               width: getHorizontalSize(
//                                 60,
//                               ),
//                               radius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(
//                                   getHorizontalSize(
//                                     20,
//                                   ),
//                                 ),
//                                 bottomRight: Radius.circular(
//                                   getHorizontalSize(
//                                     20,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             CustomImageView(
//                               imagePath: ImageConstant.imgRectangle73,
//                               height: getVerticalSize(
//                                 99,
//                               ),
//                               width: getHorizontalSize(
//                                 60,
//                               ),
//                               radius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(
//                                   getHorizontalSize(
//                                     20,
//                                   ),
//                                 ),
//                                 bottomRight: Radius.circular(
//                                   getHorizontalSize(
//                                     20,
//                                   ),
//                                 ),
//                               ),
//                               margin: getMargin(
//                                 left: 11,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       CustomImageView(
//                         imagePath: ImageConstant.imgRectangle30,
//                         height: getVerticalSize(
//                           99,
//                         ),
//                         width: getHorizontalSize(
//                           60,
//                         ),
//                         radius: BorderRadius.only(
//                           bottomLeft: Radius.circular(
//                             getHorizontalSize(
//                               20,
//                             ),
//                           ),
//                           bottomRight: Radius.circular(
//                             getHorizontalSize(
//                               20,
//                             ),
//                           ),
//                         ),
//                         alignment: Alignment.topLeft,
//                         margin: getMargin(
//                           left: 95,
//                         ),
//                       ),
//                       CustomImageView(
//                         svgPath: ImageConstant.imgClock,
//                         height: getVerticalSize(
//                           25,
//                         ),
//                         width: getHorizontalSize(
//                           35,
//                         ),
//                         alignment: Alignment.bottomLeft,
//                         margin: getMargin(
//                           left: 101,
//                           bottom: 76,
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Container(
//                           width: getHorizontalSize(
//                             174,
//                           ),
//                           margin: getMargin(
//                             right: 7,
//                             bottom: 38,
//                           ),
//                           child: RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: "lbl_now".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.yellow700,
//                                     fontSize: getFontSize(
//                                       20,
//                                     ),
//                                     fontFamily: 'Denk One',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: "msg_disclose_your".tr,
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
//                                   text: "lbl_l".tr,
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
//                                   text: "lbl_e".tr,
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
//                                   text: "lbl_ktra".tr,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       12,
//                                     ),
//                                     fontFamily: 'Denk One',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.left,
//                           ),
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
//                     bottom: 12,
//                   ),
//                   child: SmoothIndicator(
//                     offset: 0,
//                     count: 3,
//                      // size: Size.zero,
//                     effect: ScrollingDotsEffect(
//                       spacing: 14,
//                       activeDotColor: ColorConstant.indigo900,
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
