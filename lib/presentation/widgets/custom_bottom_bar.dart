import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class CustomBottomBar extends StatefulWidget {

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> with TickerProviderStateMixin {

  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = [
    [ImageConstant.imgHomeBlueGray400,'Home'],
    [ImageConstant.imgFileBlueGray400,'Report'],
    [ImageConstant.imgLocationBlueGray400,'Places'],
    [ImageConstant.imgReplyBlueGray400,'Posts'],
  ];
   //get token for insert booking date and time into database
  @override
  void initState() {
    super.initState();


    _fabAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _borderRadiusAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    fabCurve = CurvedAnimation(
      parent: _fabAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    borderRadiusCurve = CurvedAnimation(
      parent: _borderRadiusAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
      borderRadiusCurve,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(
      Duration(seconds: 1),
          () => _fabAnimationController.forward(),
    );
    Future.delayed(
      Duration(seconds: 1),
          () => _borderRadiusAnimationController.forward(),
    );
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      switch (notification.direction) {
        case ScrollDirection.forward:
          _hideBottomBarAnimationController.reverse();
          _fabAnimationController.forward(from: 0);
          break;
        case ScrollDirection.reverse:
          _hideBottomBarAnimationController.forward();
          _fabAnimationController.reverse(from: 1);
          break;
        case ScrollDirection.idle:
          break;
      }
    }
    return false;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: ColorConstant.indigo900,
        ),
        child: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            // final color = isActive ? colors.activeNavigationBarColor : colors.notActiveNavigationBarColor;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: iconList[index][0],
                  height: getHorizontalSize(20),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    iconList[index][1],
                    maxLines: 1,
                    style: AppStyle.txtInterBold12Gray500,
                  ),
                )
              ],
            );
          },
          //backgroundColor: colors.bottomNavigationBarBackgroundColor,
          activeIndex: _bottomNavIndex,
          // splashColor: colors.activeNavigationBarColor,
          notchAndCornersAnimation: borderRadiusAnimation,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          backgroundColor: ColorConstant.indigo900,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          hideAnimationController: _hideBottomBarAnimationController,
          // shadow: BoxShadow(
          //   offset: Offset(0, 1),
          //   blurRadius: 12,
          //   spreadRadius: 0.5,
          //   // color: colors.activeNavigationBarColor,
          // ),
        ),
    );
  }
}

// floatingActionButton: FloatingActionButton(
// child: Icon(Icons.add_a_photo_outlined,color: ColorConstant.indigo900,),
// backgroundColor: ColorConstant.whiteA700,
// onPressed: () {},
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation
//     .centerDocked,
///-----------------------------------------------------------
// import 'package:ahmed_s_application4/core/app_export.dart';
// import 'package:flutter/material.dart';
//
// class CustomBottomBar extends StatelessWidget {
//   CustomBottomBar({this.onChanged});
//
//   RxInt selectedIndex = 0.obs;
//
//   List<BottomMenuModel> bottomMenuList = [
//     BottomMenuModel(
//       icon: ImageConstant.imgHomeBlueGray400,
//       title: "lbl_home".tr,
//       type: BottomBarEnum.Home,
//     ),
//     BottomMenuModel(
//       icon: ImageConstant.imgFileBlueGray400,
//       title: "lbl_report".tr,
//       type: BottomBarEnum.Report,
//     ),
//     BottomMenuModel(
//       icon: ImageConstant.imgLocationBlueGray400,
//       title: "lbl_places".tr,
//       type: BottomBarEnum.Places,
//     ),
//     BottomMenuModel(
//       icon: ImageConstant.imgReplyBlueGray400,
//       title: "lbl_post".tr,
//       type: BottomBarEnum.Post,
//     )
//   ];
//
//   Function(BottomBarEnum)? onChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//           () => Container(
//         decoration: BoxDecoration(
//           color: ColorConstant.indigo900,
//         ),
//         child: BottomNavigationBar(
//           backgroundColor: Colors.transparent,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           elevation: 0,
//           currentIndex: selectedIndex.value,
//           type: BottomNavigationBarType.fixed,
//           items: List.generate(bottomMenuList.length, (index) {
//             return BottomNavigationBarItem(
//               icon: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   CustomImageView(
//                     svgPath: bottomMenuList[index].icon,
//                     height: getSize(
//                       28,
//                     ),
//                     width: getSize(
//                       28,
//                     ),
//                     color: ColorConstant.blueGray400,
//                   ),
//                   Padding(
//                     padding: getPadding(
//                       top: 7,
//                     ),
//                     child: Text(
//                       bottomMenuList[index].title ?? "",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtInterBold12Bluegray400.copyWith(
//                         color: ColorConstant.blueGray400,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               activeIcon: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   CustomImageView(
//                     svgPath: bottomMenuList[index].icon,
//                     height: getVerticalSize(
//                       24,
//                     ),
//                     width: getHorizontalSize(
//                       21,
//                     ),
//                     color: ColorConstant.blueGray400,
//                   ),
//                   Padding(
//                     padding: getPadding(
//                       top: 8,
//                     ),
//                     child: Text(
//                       bottomMenuList[index].title ?? "",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtInterBold12Bluegray400.copyWith(
//                         color: ColorConstant.blueGray400,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               label: '',
//             );
//           }),
//           onTap: (index) {
//             selectedIndex.value = index;
//             onChanged!(bottomMenuList[index].type);
//           },
//         ),
//       ),
//     );
//   }
// }
//
// enum BottomBarEnum {
//   Home,
//   Report,
//   Places,
//   Post,
// }
//
// class BottomMenuModel {
//   BottomMenuModel({required this.icon, this.title, required this.type});
//
//   String icon;
//
//   String? title;
//
//   BottomBarEnum type;
// }
//
// class DefaultWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.all(10),
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Please replace the respective Widget here',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
