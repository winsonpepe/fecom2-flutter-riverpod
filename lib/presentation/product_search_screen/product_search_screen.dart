import '../product_search_screen/widgets/list1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

class ProductSearchScreen extends StatelessWidget {
  ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 24,
            right: 11,
            bottom: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
                controller: searchoneController,
                hintText: "Sl|iders".toUpperCase(),
                hintStyle: CustomTextStyles.bodySmallGray900,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(
                    left: 10,
                    top: 18,
                    right: 6,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch1,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(56),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 19,
                    right: 10,
                    bottom: 17,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClose,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(56),
                ),
                contentPadding: getPadding(
                  top: 17,
                  bottom: 17,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillWhiteA1,
                fillColor: appTheme.whiteA700,
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 5,
                    top: 29,
                    right: 5,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(199),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(16),
                      crossAxisSpacing: getHorizontalSize(16),
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return List1ItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
