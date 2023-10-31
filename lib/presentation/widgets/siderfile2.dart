import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'custom_image_view.dart';

class SixItemWidget extends StatelessWidget {
  SixItemWidget(model);



  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 12,
          top: 22,
          right: 12,
          bottom: 22,
        ),
        decoration: AppDecoration.outlineWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgMenu,
              height: getSize(
                80,
              ),
              width: getSize(
                80,
              ),
              margin: getMargin(
                top: 1,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Obx(
                    () => Text(
                 "ffffff",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold22.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.44,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}