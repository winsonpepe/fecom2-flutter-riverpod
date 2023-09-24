import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  const List1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage171x171,
          height: getSize(171),
          width: getSize(171),
          radius: BorderRadius.circular(
            getHorizontalSize(8),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 11,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Long ",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "Sleeve T-shirt",
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
