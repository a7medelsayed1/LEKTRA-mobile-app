import '/core/app_export.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class YourReportPatientCleanScreen extends GetWidget {
  YourReportPatientCleanScreen(this.image,this.name, {Key? key})
      : super(
    key: key,
  );
  final String image;
  final String name;

  Widget images(String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(image, fit: BoxFit.fill,),

      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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

        ),
        body: SizedBox(
          width: size.width,
          child: Padding(
            padding: getPadding(
              bottom: 5,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 40),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: image,
                            height: getSize(80),
                            width: getSize(80),
                            radius: BorderRadius.circular(
                                getHorizontalSize(33))),
                        Expanded(
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 7, bottom: 7),
                              child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Text(name,
                                        overflow:
                                        TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                        AppStyle.txtInterBold16),
                                  ])),
                        ),
                      ])),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: getPadding(left: 20,),
                          child: Align(alignment: Alignment.topLeft, child: Text(
                            "Medical images", style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(41, 47, 121, 1),),)),
                        ),
                      ),
                      IconButton(onPressed: () {},
                          icon: Icon(
                            Icons.upload, color: Color.fromRGBO(41, 47, 121, 1),))
                    ],
                  ),

                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        images("assets/images/img_rectangle26.png"),
                        images("assets/images/img_rectangle29.png"),
                        images("assets/images/img_rectangle29_106x79.png"),
                        images("assets/images/img_rectangle30.png"),
                        images("assets/images/img_rectangle30_106x79.png"),
                        images("assets/images/img_rectangle31.png"),
                        images("assets/images/img_rectangle33.png"),
                        images("assets/images/img_rectangle33_106x79.png"),
                        images("assets/images/img_rectangle73.png")

                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      // height: getVerticalSize(
                      //   25,
                      // ),
                      // width: getHorizontalSize(
                      //   78,
                      // ),
                        margin: getMargin(
                          left: 20,
                          top: 20,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                          Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Report", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(41, 47, 121, 1),)
                    ),
                  ),

                ],
              ),
          ),
        ),
        Container(
          width:double.maxFinite,
          margin: getMargin(
              left: 20,
              top: 16,
              right: 20,
          ),
          child: Text(
              "Leukocoria can be detected by family members or is usually picked up by the pediatrician during screening for red reflex by direct ophthalmoscopes examination.\nFamily members tend to notice it incidentally either by direct observation of the child or in photographs taken by utilizing the flash mode in which they notice a white pupil.\nOnce detected a referral to an ophthalmologist is promptly performed for further evaluation. ",

              maxLines: null,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: getFontSize(23),
              ),
          ),
        ),
        ],
      ),
            ),
    ),)
    ,
    )
    ,
    );
  }
}