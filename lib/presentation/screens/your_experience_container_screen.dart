import '/presentation/screens/your_experience_page.dart';

import '../../../core/app_export.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_bottom_bar.dart';

class YourExperienceContainerScreen
    extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.yourExperiencePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => YourExperiencePage(false,isDoctor: false,),
                    transition: Transition.noTransition)),
            ));
  }

  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return "/";
  //     case BottomBarEnum.Report:
  //       return "/";
  //     case BottomBarEnum.Places:
  //       return "/";
  //     case BottomBarEnum.Post:
  //       return AppRoutes.yourExperiencePage;
  //     default:
  //       return "/";
  //   }
  // }
  //
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.yourExperiencePage:
  //       return YourExperiencePage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
