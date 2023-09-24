import '../product_discover_screen/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:pepe_s_application5/widgets/app_bar/custom_app_bar.dart';

class ProductDiscoverScreen extends StatelessWidget {
  const ProductDiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Shopsie")),
            body: Padding(
                padding: getPadding(left: 16, top: 5, right: 16),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(309),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListItemWidget();
                    }))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
