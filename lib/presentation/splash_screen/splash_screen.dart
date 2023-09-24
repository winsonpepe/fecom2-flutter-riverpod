import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              top: 261,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Shopsie",
                  style: theme.textTheme.displayLarge,
                ),
                Padding(
                  padding: getPadding(
                    top: 24,
                    bottom: 5,
                  ),
                  child: Text(
                    "The best way to style your life.",
                    style: CustomTextStyles.bodyMediumGray6000114,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
