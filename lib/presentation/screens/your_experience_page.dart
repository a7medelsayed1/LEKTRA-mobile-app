import 'package:ahmed_s_application4/presentation/screens/add_your_experience_screen.dart';
import 'package:ahmed_s_application4/presentation/screens/parent_profile_screen.dart';

import '../../../core/app_export.dart';
import 'package:flutter/material.dart';
import '../../controllers/your_experience_controller.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/listomarahmed_item_widget.dart';
import 'comments_screen.dart';

// ignore_for_file: must_be_immutable
class YourExperiencePage extends StatefulWidget {
  const YourExperiencePage(this.addPost,{required this.isDoctor});

  final bool addPost;
  final bool isDoctor;

  @override
  State<YourExperiencePage> createState() => _YourExperiencePageState();
}

class _YourExperiencePageState extends State<YourExperiencePage> {
  bool like=false;
  int likes=6;
  @override
  Widget build(BuildContext context) {
    List images = [
      ImageConstant.imgEllipse131,
      ImageConstant.imgEllipse132,
      ImageConstant.imgEllipse133,
      ImageConstant.imgEllipse134,
      ImageConstant.imgEllipse131
    ];
    List names = [
      'Hanaa Adel',
      'Adel Ali',
      'Mohamed Ali',
      'Eman Adel',
      'Hanaa Adel'
    ];
    List comments = [
      "msg_can_you_tell_me".tr,
      "msg_i_was_had_tha_same".tr,
      "msg_my_boy_his_status".tr,
      "msg_i_was_had_tha_same2".tr,
      "msg_i_was_had_tha_same".tr
    ];

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(100),
                centerTitle: true,
                leadingWidth: 40,
                leading:widget.isDoctor? AppbarImage(
                    height: getSize(20),
                    width: getSize(20),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 15),
                    onTap: () => Get.back()):null,
                title: AppbarImage(
                    height: getVerticalSize(50),
                    width: getHorizontalSize(120),
                    imagePath: ImageConstant.imgLogo23),
                actions: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse52122x122,
                      // height: getSize(35),
                      // width: getSize(35),
                      radius: BorderRadius.circular(getHorizontalSize(18)),
                      margin:
                          getMargin(left: 15, right: 15, top: 10, bottom: 10),
                      onTap: () {
                        Get.to(ParentProfileScreen());
                      })
                ]),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 27),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              height: getVerticalSize(55),
                              text: "msg_add_your_experience".tr,
                              margin: getMargin(left: 24, right: 24),
                              variant: ButtonVariant.OutlineGray400,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingAll16,
                              fontStyle: ButtonFontStyle.InterMedium18,
                              onTap: onTapAddyourexperience),
                          if (widget.addPost)
                            Container(
                                width: double.maxFinite,
                                margin: getMargin(top: 8),
                                padding:
                                    getPadding(left: 24, right: 24, bottom: 20),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: ListomarahmedItemWidget(4)),
                                    ])),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: getPadding(right: 21, left: 21),
                              width: double.maxFinite,
                              child: Container(
                                padding: getPadding(
                                  left: 9,
                                  top: 12,
                                  right: 9,
                                  bottom: 12,
                                ),
                                decoration:
                                    AppDecoration.outlineGray400.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                ColorConstant.gray200,
                                            child: Expanded(
                                              child: CustomImageView(
                                                imagePath: images[0],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 8,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  names[0],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterBold13,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                  ),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "lbl_jan_2".tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray700,
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "7:45 AM".tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray700,
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 15,
                                        right: 11,
                                      ),
                                      child: Text(
                                        comments[0],
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold13Gray900,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 8,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: GestureDetector(
                                                onTap: () =>
                                                    Get.to(CommentsScreen()),
                                                child: Text(
                                                  "lbl_reply".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium16Indigo600dd,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_3".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium16
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                        0.32,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Icon(Icons.comment_outlined,
                                                    color:
                                                        ColorConstant.indigo900,
                                                    size:
                                                        getHorizontalSize(30)),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 15,
                                                    top: 2,
                                                    bottom: 1,
                                                  ),
                                                  child: Text("$likes".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16),
                                                ),
                                                Container(
                                                  margin: getPadding(right: 12,bottom: 12),
                                                  width: getHorizontalSize(20),
                                                  height: getHorizontalSize(20),
                                                  child: IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    iconSize:getHorizontalSize(
                                                        30) ,
                                                    icon: Icon(
                                                        like?Icons.thumb_up:Icons.thumb_up_outlined,
                                                        color: ColorConstant
                                                            .indigo900,
                                                        ),
                                                    onPressed: (){setState(() {
                                                      like=!like;
                                                      like?likes++:likes--;
                                                    });},
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 15,
                                                    top: 2,
                                                    bottom: 1,
                                                  ),
                                                  child: Text("lbl_0".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16),
                                                ),
                                                Icon(Icons.thumb_down_outlined,
                                                    color:
                                                        ColorConstant.indigo900,
                                                    size:
                                                        getHorizontalSize(30)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: double.maxFinite,
                              margin: getMargin(top: 8),
                              padding:
                                  getPadding(left: 24, right: 24, bottom: 20),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(16));
                                        },
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return ListomarahmedItemWidget(index);
                                        })),
                              ]))
                        ])))));
  }

  onTapTxtMohamedaliebadaOne() {
    Get.toNamed(AppRoutes.parentProfileScreen);
  }

  onTapTxtFive() {
    Get.toNamed(AppRoutes.commentsTwoScreen);
  }

  onTapImgGroup196() {
    Get.toNamed(AppRoutes.commentsTwoScreen);
  }

  onTapAddyourexperience() {
    Get.to(AddYourExperienceScreen());
  }

  onTapArrowleft() {
    Get.back();
  }

  onTapImgEllipseFourteen() {
    Get.toNamed(AppRoutes.parentProfileScreen);
  }
}

class ListellipsetwelveItemModel {
  Rx<String> mohamedaliebadaOneTxt = Rx("msg_mohamed_ali_ebada".tr);

  Rx<String> ihadanexperiencOneTxt = Rx("msg_i_had_an_experience".tr);

  Rx<String> fiveTxt = Rx("lbl_5".tr);

  Rx<String> oneTxt = Rx("lbl_1".tr);

  String? id = "";
}

class ListellipsetwelveItemWidget extends StatelessWidget {
  RxList<ListellipsetwelveItemModel> listellipsetwelveItemList =
      RxList.generate(3, (index) => ListellipsetwelveItemModel());

  RxList<ListomarahmedItemModel> listomarahmedItemList =
      RxList.generate(2, (index) => ListomarahmedItemModel());

  ListellipsetwelveItemWidget(ListellipsetwelveItemModel model,
      {required Function() onTapTxtMohamedaliebadaOne,
      required Function() onTapTxtFive,
      required Function() onTapImgGroup196});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ListomarahmedItemModel {
  Rx<String> omarahmedTxt = Rx("lbl_omar_ahmed".tr);

  String? id = "";
}
