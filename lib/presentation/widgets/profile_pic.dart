import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class ProfilePic extends StatelessWidget {
  ProfilePic({required this.imagePath});
  String imagePath;
  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: getHorizontalSize(75),
          decoration: BoxDecoration(
              color: ColorConstant.indigo900,
              border:Border.all(
                // width: 0,
                color: ColorConstant.indigo900
              ),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(18))),
        ),
        Container(
          margin: EdgeInsets.only(top: getHorizontalSize(15)),
          child: CircleAvatar(
            radius: getHorizontalSize(60),
            backgroundColor: ColorConstant.gray200,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CustomImageView(
                imagePath: imagePath,
              ),
            ),
          ),
        )
      ],
    );
  }
}
