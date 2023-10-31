import 'dart:io';

import 'package:ahmed_s_application4/presentation/screens/doctor_calender.dart';
import 'package:ahmed_s_application4/presentation/screens/your_experience_page.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '/core/app_export.dart';
import '/presentation/screens/doctor_all_reports_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/home_clean_widget.dart';
import 'clean_notification.dart';
import 'scan_completed.dart';
import 'your_report_doctor_one_screen.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';

class HomeParentsOneScreen extends StatefulWidget {
  HomeParentsOneScreen({Key? key}) : super(key: key);
  // bool isDoctor=Get.arguments;
  @override
  State<HomeParentsOneScreen> createState() => _HomeParentsOneScreenState();
}

class _HomeParentsOneScreenState extends State<HomeParentsOneScreen> with SingleTickerProviderStateMixin {

  Animation<double>? _animation;
  AnimationController? _animationController;

  @override
  void initState(){

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation = CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);


    super.initState();


  }

  Widget content(String image, String title,ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height:getHorizontalSize(10),
              ),
              Container(height:getHorizontalSize(80),child: Image.asset(image)),
              SizedBox(
                height:getHorizontalSize(20),
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getFontSize(25),
                  color: Color.fromRGBO(41, 47, 121, 1),
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
      ),
    );
  }
  File? image;
  Future pickImage(bool gallery) async {
    try {
      final image = await ImagePicker().pickImage(source:gallery? ImageSource.gallery:ImageSource.camera);
      if(image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
    Get.to(ScanCompleted(isParent:false,rbDetection: true,));
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

            //Init Floating Action Bubble
            floatingActionButton: FloatingActionBubble(
              // Menu items
              items: <Bubble>[

                // Floating action menu item
                Bubble(
                  icon: Icons.panorama_outlined,
                  iconColor: Colors.white,
                  title:"Fundus Image",
                  bubbleColor : ColorConstant.indigo900,
                  titleStyle:TextStyle(fontSize: 16 , color: Colors.white),
                  onPress: () =>pickImage(true),
                ),
                // Floating action menu item
                Bubble(
                  title:"Eye Image",
                  iconColor :Colors.white,
                  bubbleColor : ColorConstant.indigo900,
                  icon:Icons.remove_red_eye_outlined,
                  titleStyle:TextStyle(fontSize: 16 , color: Colors.white),
                  onPress: ()=>_showMyDialog(),
                ),
              ],

              // animation controller
              animation: _animation!,

              // On pressed change animation state
              onPress: () => _animationController!.isCompleted
                  ? _animationController!.reverse()
                  : _animationController!.forward(),

              // Floating Action button Icon color
              iconColor: Colors.white,

              // Flaoting Action button Icon
              iconData: Icons.camera_alt_outlined,
              backGroundColor:ColorConstant.indigo900,
            ),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(450),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                        height: getVerticalSize(473),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Container(
                                                height: getVerticalSize(430),
                                                width: double.maxFinite,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(getSize(50)),bottomRight: Radius.circular(getSize(50)),),
                                                    color: ColorConstant.indigo900
                                                ),
                                              ),
                                              Align(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 24,
                                                          top: 10,
                                                          right: 23),
                                                      child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomAppBar(
                                                                height :getVerticalSize(80),

                                                                centerTitle:
                                                                true,
                                                                title: AppbarImage(
                                                                    height: getVerticalSize(90),
                                                                    width: getHorizontalSize(120),
                                                                    imagePath: ImageConstant.imgLogoLight),
                                                                ),
                                                            Container(
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    0,
                                                                    top: 8,
                                                                    right:
                                                                    0),
                                                                padding:
                                                                getPadding(
                                                                    left:
                                                                    0,
                                                                    top: 6,
                                                                    right:
                                                                    0,
                                                                    bottom:
                                                                    6),
                                                                decoration: AppDecoration
                                                                    .outlineWhiteA700
                                                                    .copyWith(
                                                                    borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder15),
                                                                child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgSearch,
                                                                          height: getSize(
                                                                              24),
                                                                          width: getSize(
                                                                              24),
                                                                          margin:
                                                                          getMargin(top: 1,left: 12)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                              5,
                                                                              top:
                                                                              5,
                                                                              right :350,
                                                                              bottom:
                                                                              5),
                                                                          child: Text(
                                                                              "lbl_search".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium14.copyWith(letterSpacing: getHorizontalSize(0.28))))
                                                                    ])),
                                                            Container(
                                                                height:
                                                                getVerticalSize(
                                                                    250),
                                                                width:
                                                                getHorizontalSize(
                                                                    400),
                                                                margin:
                                                                getMargin(
                                                                    top:
                                                                    16),
                                                                child: Stack(
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomCenter,
                                                                    children: [
                                                                      CarouselSlider.builder(
                                                                          options: CarouselOptions(
                                                                              height: getVerticalSize(250),
                                                                              autoPlay: true,
                                                                              viewportFraction: 1.0,
                                                                              scrollDirection: Axis.horizontal,
                                                                              onPageChanged: (index, reason) {
                                                                              }),
                                                                          itemCount:3,// HomeParentsOneController().homeParentsOneModelObj.value.sliderclarityne1ItemList.value.length,
                                                                          itemBuilder: (context, index, realIndex) {
                                                                            return Sliderclarityne1ItemWidget();
                                                                          }),

                                                                    ]))
                                                          ])))
                                            ]))),

                              ])),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Categories",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color.fromRGBO(41, 47, 121, 1),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                          child: Container(
                            height: double.maxFinite,
                            width: double.maxFinite,
                            child: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 210,
                                crossAxisSpacing: getHorizontalSize(20),
                                mainAxisSpacing: 20,childAspectRatio: 3/2),
                              children: [
                                content("assets/images/newreport.png", "New Report",()=>Get.to(YourReportDoctorScreen())),
                                content("assets/images/my dates.png", "My Dates",()=>Get.to(DoctorCalender(true))),
                                content("assets/images/library.png", "Patients",()=>Get.to(DoctorAllReportsScreen())),
                                content("assets/images/feedback 1.png", "Posts",()=>Get.to(YourExperiencePage(false,isDoctor:true,))),                             ],
                            ),
                          ),
                        ),
                      )
                    ]))));
  }
}
