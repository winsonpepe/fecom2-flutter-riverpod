import '../cart_screen/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:pepe_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(64),
          leadingWidth: getHorizontalSize(39),
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenuBlack90001,
            margin: getMargin(
              left: 15,
              top: 18,
              bottom: 22,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Shopsie",
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 24,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 26,
                      ),
                      child: Text(
                        "MY CART".toUpperCase(),
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 26,
                      right: 16,
                    ),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return Padding(
                          padding: getPadding(
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(358),
                            child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray200,
                            ),
                          ),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return CartItemWidget();
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 98,
                    ),
                    child: Divider(),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: Text(
                            "SUB-TOTAL".toUpperCase(),
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Text(
                          "111.80".toUpperCase(),
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "Pay 111.80".toUpperCase(),
          margin: getMargin(
            left: 32,
            right: 32,
            bottom: 64,
          ),
        ),
      ),
    );
  }
}
