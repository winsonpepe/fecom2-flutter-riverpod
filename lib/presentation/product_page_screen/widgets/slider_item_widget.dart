import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle11,
      height: getVerticalSize(289),
      width: getHorizontalSize(390),
    );
  }
}
