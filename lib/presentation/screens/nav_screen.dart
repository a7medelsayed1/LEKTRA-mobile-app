import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../models/user_services.dart';
import '/presentation/screens/nearest_medical_center_page.dart';
import '/presentation/screens/your_experience_page.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'clean_home_patient.dart';
import 'scan_completed.dart';
import 'your_report_patient_screen.dart';

class NavScreen extends StatefulWidget {
  NavScreen({required this.pageIndex});
  final int pageIndex;
  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> with TickerProviderStateMixin {
  late bool isNormal;
  bool d=Get.arguments==null?false:true;
  List pages = [
    HomeParentsCleanScreen(),
    YourReportPatientScreen('Mai Ashraf Ali',ImageConstant.imgEllipse13,false),
    NearestMedicalCenterPage(),
    YourExperiencePage(false,isDoctor: false,)
  ];
  late int _bottomNavIndex ; //default index of a first screen

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  List iconList = [
    [Icons.home_outlined, 'Home'],
    [Icons.assignment_outlined, 'Report'],
    [Icons.location_on_outlined, 'Places'],
    [Icons.edit, 'Posts'],
  ];

  //get token for insert booking date and time into database
  @override
  void initState() {
    super.initState();
    _bottomNavIndex=widget.pageIndex;
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

  Future pickImage(bool gallery) async {
    try {
      final image = await ImagePicker().pickImage(source: gallery?ImageSource.gallery:ImageSource.camera);
      if(image == null) return;
      var m=await mlDetection(image);
      print('m=$m');
      setState(() {
        m=='Normal'?isNormal=true:isNormal=false;
      });
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
    Get.to(ScanCompleted(isParent: true,rbDetection:isNormal ,));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray200,
      body: pages[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconList[index][0],color: isActive?ColorConstant.whiteA700:ColorConstant.gray400),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  iconList[index][1],
                  maxLines: 1,
                  style:isActive?AppStyle.txtInterBold12WhiteA700: AppStyle.txtInterBold12Gray500,
                ),
              )
            ],
          );
        },
        activeIndex: _bottomNavIndex,
        splashColor: ColorConstant.whiteA700,
        notchAndCornersAnimation: borderRadiusAnimation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,

        backgroundColor: ColorConstant.indigo900,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        hideAnimationController: _hideBottomBarAnimationController,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.camera_alt_outlined,
          color: ColorConstant.indigo900,
        ),
        backgroundColor: ColorConstant.whiteA700,
        onPressed: ()=>_showMyDialog(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('RedReflex Technique'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('1-Turn the lights down so that your camera uses the auto-flash.'),
                SizedBox(height: getHorizontalSize(10),),
                Text('2-Ensure any light sources – such as table lamps – are behind your child so they don’t reflect in the eyes.'),
                SizedBox(height: getHorizontalSize(10),),
                Text('3-Check that your camera’s red-eye reduction settings are turned OFF .  The red eye reduction flash symbol is usually a diagonal line through an eye or a flash next to an eye.  Make sure this is NOT showing as the flash setting.'),
                SizedBox(height: getHorizontalSize(10),),
                Text('4-Position yourself about four metres from your child and use the zoom to capture the child’s entire head.'),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Text('Camera',style: TextStyle(color: ColorConstant.indigo900)),
                    onPressed: () {
                      pickImage(false);
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child:  Text('Gallery',style: TextStyle(color: ColorConstant.indigo900),),
                    onPressed: () {
                      pickImage(true);
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
