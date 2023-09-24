import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage110x109,
          height: getVerticalSize(110),
          width: getHorizontalSize(109),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        style: theme.textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: Text(
                          "",
                          style: CustomTextStyles.bodyMedium14_1,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgTrash2,
                  height: getSize(20),
                  width: getSize(20),
                  margin: getMargin(
                    bottom: 34,
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                top: 31,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Qty:",
                            style: CustomTextStyles.bodyMediumGray60001,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgPlussquare,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      left: 22,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Text(
                      "1",
                      style: CustomTextStyles.bodyMedium14_1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgPlussquarePrimary,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      left: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
