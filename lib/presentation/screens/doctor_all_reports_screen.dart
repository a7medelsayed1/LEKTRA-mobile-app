import '/presentation/screens/your_report_patient_screen.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';

class DoctorAllReportsScreen extends StatelessWidget {
  DoctorAllReportsScreen({Key? key}) : super(key: key);
  List images = [
    ImageConstant.imgEllipse13,
    ImageConstant.imgEllipse13100x100,
    ImageConstant.imgEllipse14,
    ImageConstant.imgEllipse15,
    ImageConstant.imgEllipse16
  ];
  List names = [
    'Mai Ashraf Ali',
    'Menna Mohamed Elsayed',
    'Amal Nour ElDeen',
    'Marwan Ayman Khatter',
    'Hazem Alaa Kamal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray200,
        appBar: CustomAppBar(
          height: getVerticalSize(80),
          leadingWidth: 40,
          leading: AppbarImage(
              height: getSize(20),
              width: getSize(20),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 15),
              onTap: () => Get.back()),
          centerTitle: true,
          title: AppbarImage(
              height: getVerticalSize(90),
              width: getHorizontalSize(120),
              imagePath: ImageConstant.imgLogo23),
          // actions: [
          //   Padding(
          //     padding: getPadding(right: 12),
          //     child: CustomImageView(
          //       svgPath: ImageConstant.imgHomeIndigo900,
          //       // onTap: Get.to(page),
          //     ),
          //   )
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemBuilder: (_, index) => childProfile(index),
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
              Container(
                height: getHorizontalSize(150),
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(
                          80,
                        ),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorConstant.indigo900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getMargin(
                        left: 40,
                        top: 15,
                      ),
                      child: Align(
                        heightFactor: getSize(
                          53,
                        ),
                        widthFactor: getSize(
                          53,
                        ),
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: ColorConstant.gray200,
                          radius: getHorizontalSize(
                            50,
                          ),
                          child: Center(
                            child: CircleAvatar(
                              radius: getHorizontalSize(
                                45,
                              ),
                              backgroundColor: ColorConstant.gray400,
                              child: Icon(
                                Icons.add,
                                color: ColorConstant.gray600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 83,
                          top: 29,
                          right: 40,
                        ),
                        child: Text(
                          "Add New Report",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold20Indigo900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget childProfile(int index) {
    return GestureDetector(
      onTap: () => Get.to(YourReportPatientScreen(names[index],images[index],true),),
      child: Container(
        height: getHorizontalSize(150),
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  80,
                ),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.indigo900,
                ),
              ),
            ),
            Padding(
              padding: getMargin(
                left: 40,
                top: 15,
              ),
              child: Align(
                heightFactor: getSize(
                  53,
                ),
                widthFactor: getSize(
                  53,
                ),
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: ColorConstant.gray200,
                  radius: getHorizontalSize(
                    50,
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: images[index],
                      height: getSize(
                        115,
                      ),
                      width: getSize(
                        115,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          33,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 83,
                  top: 29,
                  right: 40,
                ),
                child: Text(
                  names[index],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold20Indigo900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
