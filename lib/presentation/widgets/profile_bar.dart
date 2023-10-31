import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'app_bar/appbar_image.dart';

class ProfileBar extends StatelessWidget {
  String? imagePath;

   ProfileBar({required this.imagePath,}) ;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: AppbarImage(
          height: getVerticalSize(70),
          width: getHorizontalSize(120),
          imagePath: imagePath),
      pinned: false,
      floating: false,
      stretch: false,
      backgroundColor: ColorConstant.indigo900,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: true,
      toolbarHeight: getVerticalSize(80),

    );
  }
}
