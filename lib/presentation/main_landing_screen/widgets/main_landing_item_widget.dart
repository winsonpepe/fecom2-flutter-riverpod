import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class MainLandingItemWidget extends StatelessWidget {
  const MainLandingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage15,
      height: getVerticalSize(58),
      width: getHorizontalSize(80),
    );
  }
}
