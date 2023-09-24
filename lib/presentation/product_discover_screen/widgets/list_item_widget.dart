import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
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
          imagePath: ImageConstant.imgImage3,
          height: getVerticalSize(236),
          width: getHorizontalSize(171),
          radius: BorderRadius.circular(
            getHorizontalSize(8),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
          ),
          child: Text(
            "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.50,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
          ),
          child: Text(
            "",
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
