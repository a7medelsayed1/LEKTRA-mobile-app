import 'package:ahmed_s_application4/presentation/screens/doctor_calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../core/app_export.dart';

class ListsubtractItemWidget extends StatelessWidget {
  ListsubtractItemWidget(this.index, this.isDoctor);
  final int index;
  final bool isDoctor;
  List hosNames = [
    'Mansoura University Hospital',
    'Ophthalmology Hospital',
    'National Cancer Center',
    'Cairo University Hospital',
    'Ophthalmology Center'
  ];
  List doctorNames = [
    'Dr.Anwar Ahmed',
    'Dr.Eman Ashraf',
    'Dr.Mohamed Elsaeed',
    'Dr.Ayman Mahmoud ',
    'Dr.Marwa Ahmed'
  ];
  List hosImages = [
    'assets/images/img_ellipse12_4.png',
    'assets/images/img_ellipse12_4.png',
   'assets/images/img_ellipse41.png',
    'assets/images/img_ellipse14_53x53.png',
   'assets/images/img_ellipse41.png',

  ];
  List docImages = [
    ImageConstant.imgEllipse48,
    'assets/images/img_ellipse28.png',
    'assets/images/img_ellipse13_5.png',
    ImageConstant.imgEllipse48,
    'assets/images/img_ellipse28.png',
  ];
  List docDesc = [
  "Ophthalmology specialist, Mansoura University,a professional doctor with eyes diseases.",
    "Ophthalmology specialist, AUC,a professional doctor with eyes diseases.",
    'A Professional doctor with eyes diseases and have Master from AUC, Ophthalmology specialist, Cairo University.a professional doctor with eyes diseases and have Master from AUC .',
    "Ophthalmology specialist, Mansoura University,a professional doctor with eyes diseases.",
  "Ophthalmology specialist, AUC,a professional doctor with eyes diseases.",
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(DoctorCalender(false)),
      child: Container(
        height: getVerticalSize(
          170,
        ),
        width: getHorizontalSize(
          404,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: getHorizontalSize(
                41,
              ),
              height: getVerticalSize(
                160,
              ),
              decoration: BoxDecoration(
                  color: ColorConstant.indigo900,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )),
            ),
            Padding(
              padding: getMargin(
                left: 18,
                top: 15,
              ),
              child: Align(
                heightFactor: getSize(
                  53,
                ),
                widthFactor: getSize(
                  53,
                ),
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: ColorConstant.gray200,
                  radius: getHorizontalSize(
                    28,
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: isDoctor?docImages[index]:hosImages[index],
                      height: getSize(
                        60,
                      ),
                      width: getSize(
                        60,
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
              alignment: Alignment.topCenter,
              child: Padding(
                padding: getPadding(
                  left: 83,
                  top: 29,
                  right: 40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      isDoctor?doctorNames[index]:hosNames[index],
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        isDoctor?docDesc[index]:'',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  400,
                ),
                margin: getMargin(
                  left: 85,
                ),
                padding: getPadding(
                  left: 0,
                  top: 9,
                  right: 30,
                  bottom: 9,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          top: 130,
                        ),
                        child: RatingBar.builder(
                          initialRating: 4,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemSize: getVerticalSize(
                            16,
                          ),
                          unratedColor: ColorConstant.gray400,
                          itemCount: 5,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) {},
                          itemBuilder: (context, _) {
                            return Icon(
                              Icons.star,
                              color: ColorConstant.yellow700,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 210,
                        top: 103,
                      ),
                      child: Text(
                        "Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium13.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CustomImageView(
                fit: BoxFit.fill,
                svgPath: ImageConstant.imgGroup50,
                height: getVerticalSize(
                  200,
                ),
                width: getHorizontalSize(
                  410,
                ),
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
