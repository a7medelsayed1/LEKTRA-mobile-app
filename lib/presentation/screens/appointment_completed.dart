import 'package:ahmed_s_application4/presentation/screens/nav_screen.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../widgets/custom_button.dart';

class AppointmentSuccess extends StatelessWidget {
  const AppointmentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getHorizontalSize(
                  500,
                ),
                width: getHorizontalSize(
                  400,
                ),
                child: CustomImageView(
                  svgPath:
                    ImageConstant.imgPana,

                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: getPadding(top:40.0),
                child: Text(
                  "You have successfully booked the date.",
                  maxLines: null,
                  style: AppStyle.txtInterMedium24.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.48,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Home",
                margin: getMargin(
                  left: 42,
                  top: 32,
                  right: 42,
                ),
                alignment: Alignment.center,
                onTap: ()=>Get.to(NavScreen(pageIndex: 1)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
