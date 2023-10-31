import 'dart:async';

import '/presentation/screens/nav_screen.dart';
import '/presentation/screens/nearest_medical_center_page.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../widgets/custom_button.dart';
import 'home_clean.dart';

class ScanCompleted extends StatefulWidget {
   ScanCompleted({Key? key, required this.isParent,required this.rbDetection}) : super(key: key);
  final bool isParent;
  final bool rbDetection;
  @override
  State<ScanCompleted> createState() => _ScanCompletedState();
}

class _ScanCompletedState extends State<ScanCompleted> {

  bool isLoading= true;
@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=> setState(() {
      isLoading= false;
    }));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: isLoading?Center(
          child: CircularProgressIndicator(
            color: ColorConstant.indigo900,
          ),
        ):Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getHorizontalSize(
                  500,
                ),
                width: getHorizontalSize(
                  500,
                ),
                child: CustomImageView(
                  imagePath:
                  ImageConstant.imgCheck,

                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: getPadding(top:40.0,left: 42,right: 42),
                child: Text(
                  widget.rbDetection?
                  "The Scan is completed Successfully. \n Signs of Retinoblastoma are detected in your child\'s eye.\nPlease take your child to an Opthalmologist "
                      :'The Scan is completed Successfully \n Fortunately There is no sign of Retinoblastoma are detected ',
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterMedium24.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.48,
                    ),
                  ),
                ),
              ),
              widget.rbDetection&&widget.isParent? CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Nearest Medical Center",
                margin: getMargin(
                  left: 42,
                  top: 12,
                  right: 42,
                ),
                alignment: Alignment.center,
                onTap: ()=>Get.to(NearestMedicalCenterPage()),
              ):Container(),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Home",
                margin: getMargin(
                  left: 42,
                  top: 12,
                  right: 42,
                ),
                alignment: Alignment.center,
                onTap: ()=>Get.to(widget.isParent?NavScreen(pageIndex: 0,):HomeParentsOneScreen()),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
