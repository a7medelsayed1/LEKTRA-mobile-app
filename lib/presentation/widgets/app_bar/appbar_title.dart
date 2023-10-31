import 'package:flutter/material.dart';
import '../../../core/utils/color_constant.dart';
import '../../../theme/app_style.dart';

class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    required this.text,
    this.margin,
    this.onTap,
  });

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtWorkSansRomanBold24.copyWith(
            color: ColorConstant.indigo900,
          ),
        ),
      ),
    );
  }
}
