import 'dart:ui';

import 'package:flutter/cupertino.dart';
import '../../core/app_export.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/listsubtract_item_widget.dart';

class NearestMedicalCenterPage extends StatefulWidget {
  @override
  State<NearestMedicalCenterPage> createState() => _NearestMedicalCenterPageState();
}

class _NearestMedicalCenterPageState extends State<NearestMedicalCenterPage> {
  bool isDoctor=false;

  @override
  Widget build(BuildContext context) {
    Color hosColor=isDoctor?ColorConstant.gray300:ColorConstant.indigo900;
    Color docColor=isDoctor?ColorConstant.indigo900:ColorConstant.gray300;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar1(
                height: getVerticalSize(80),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(90),
                    width: getHorizontalSize(120),
                    imagePath: ImageConstant.imgLogo23)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(60),
                                  width: double.maxFinite,
                                  color: hosColor,
                                  child:
                                  Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: (){
                                          setState(() { isDoctor=false;});
                                          print('$isDoctor');},
                                          child: Container(
                                            child: Center(
                                              child: (
                                              Text('Hospitals',style: _setFontStyle(isDoctor?ButtonFontStyle.InterBold22:ButtonFontStyle.InterBold22WhiteA700),)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: GestureDetector(
                                        onTap: (){
                                        setState(() {isDoctor=true;});
                                        print('$isDoctor');},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: docColor,
                                            borderRadius: BorderRadius.horizontal(left: Radius.circular(15))
                                          ),
                                          height:double.maxFinite,
                                          child: Center(
                                            child: (
                                            Text('Doctors',style: _setFontStyle(isDoctor?ButtonFontStyle.InterBold22WhiteA700:ButtonFontStyle.InterBold22),)
                                            ),
                                          ),
                                        ),
                                      ))
                                    ],
                                  )
                              ),
                              Padding(
                                  padding: getPadding(top: 34,bottom: 52),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return ListsubtractItemWidget(index,isDoctor);
                                      })),
                            ]))))));
  }
}

class CustomAppBar1 extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar1(
      {required this.height,
        this.leadingWidth,
        this.leading,
        this.title,
        this.centerTitle,
        this.actions});

  double height;
  double? leadingWidth;
  Widget? leading;
  Widget? title;
  bool? centerTitle;
  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }


  @override
  Size get preferredSize => Size(
    size.width,
    height,
  );
}
_setFontStyle(fontStyle) {
  switch (fontStyle) {
    case ButtonFontStyle.InterBold22:
      return TextStyle(
        color: ColorConstant.indigo900,
        fontSize: getFontSize(
          22,
        ),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: getVerticalSize(
          1.23,
        ),
      );
    default:
      return TextStyle(
        color: ColorConstant.whiteA700,
        fontSize: getFontSize(
          22,
        ),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: getVerticalSize(
          1.23,
        ),
      );
  }
}
_setColor(variant) {
  switch (variant) {
    case ButtonVariant.FillBluegray100:
      return ColorConstant.blueGray100;
    default:
      return ColorConstant.indigo900;
  }
}

enum ButtonFontStyle {
  InterBold22WhiteA700,
  InterBold22,
}
enum ButtonVariant {
  FillIndigo900,
  FillBluegray100,
}