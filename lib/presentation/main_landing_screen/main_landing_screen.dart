import '../main_landing_screen/widgets/main_landing_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_image_1.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:pepe_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pepe_s_application5/widgets/custom_drop_down.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';
import 'package:pepe_s_application5/widgets/custom_outlined_button.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

class MainLandingScreen extends StatelessWidget {
  MainLandingScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(32),
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 12,
              top: 17,
              bottom: 22,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Shopsie",
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 16,
                top: 17,
                right: 22,
                bottom: 1,
              ),
            ),
            AppbarImage1(
              svgPath: ImageConstant.imgCart,
              margin: getMargin(
                left: 10,
                top: 16,
                right: 22,
              ),
            ),
            AppbarImage1(
              svgPath: ImageConstant.imgUser,
              margin: getMargin(
                left: 10,
                top: 17,
                right: 38,
                bottom: 1,
              ),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 3,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: AppDecoration.fillGray,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(362),
                          width: getHorizontalSize(360),
                          margin: getMargin(
                            top: 24,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage61,
                                height: getVerticalSize(362),
                                width: getHorizontalSize(360),
                                radius: BorderRadius.vertical(
                                  top: Radius.circular(getHorizontalSize(200)),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 59,
                                    right: 59,
                                    bottom: 14,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "SEASON SALE".toUpperCase(),
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "up to".toUpperCase(),
                                                style: CustomTextStyles
                                                    .titleMediumLatoWhiteA700,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "60% Off".toUpperCase(),
                                                style: CustomTextStyles
                                                    .displaySmallLatoGray200,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUnion,
                          height: getVerticalSize(48),
                          width: getHorizontalSize(134),
                          margin: getMargin(
                            top: 32,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage60,
                          height: getVerticalSize(123),
                          width: getHorizontalSize(390),
                          margin: getMargin(
                            top: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 66,
                    ),
                    child: Text(
                      "Trending now".toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 34,
                        right: 53,
                      ),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(48),
                            text: "All",
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumWhiteA700,
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(80),
                            text: "Dresses",
                            margin: getMargin(
                              left: 8,
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.bodyMedium!,
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(103),
                            text: "Accessories",
                            margin: getMargin(
                              left: 8,
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.bodyMedium!,
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(66),
                            text: "Dresses",
                            margin: getMargin(
                              left: 8,
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.bodyMedium!,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 16,
                      top: 32,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: getVerticalSize(236),
                                      width: getHorizontalSize(171),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(8),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 11,
                                      ),
                                      child: Text(
                                        "Olive plain dress",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        " 20.99".toUpperCase(),
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage236x171,
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
                                          "Shoes on heels",
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 9,
                                        ),
                                        child: Text(
                                          " 28.99".toUpperCase(),
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage,
                                  height: getVerticalSize(236),
                                  width: getHorizontalSize(171),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(8),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Text(
                                    "Olive plain dress",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Text(
                                    " 20.99".toUpperCase(),
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 62,
                    ),
                    child: Text(
                      "Actual categories".toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7,
                    height: getVerticalSize(386),
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      top: 34,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "Outerwear",
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "Raincoats, sweaters, etc.",
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7386x358,
                    height: getVerticalSize(386),
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "Leather shoes",
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "Shoes, sandals, etc.",
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle8,
                    height: getVerticalSize(386),
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "Light dresses",
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Text(
                      "Evening, casual, home",
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 48,
                    ),
                    child: Text(
                      "Only trusted brands".toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 63,
                      top: 37,
                      right: 63,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(59),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(12),
                        crossAxisSpacing: getHorizontalSize(12),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return MainLandingItemWidget();
                      },
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 45,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 40,
                      right: 19,
                      bottom: 40,
                    ),
                    decoration: AppDecoration.fillBlack,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 49,
                          ),
                          child: Text(
                            "NEW ARRIVAL".toUpperCase(),
                            style: CustomTextStyles.displaySmallGray400,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "FALL 2021".toUpperCase(),
                              style: CustomTextStyles.titleSmallBluegray10002,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 69,
                          ),
                          padding: getPadding(
                            left: 18,
                            right: 18,
                          ),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL279,
                          ),
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              left: 10,
                              right: 10,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL279,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle1381,
                              height: getVerticalSize(354),
                              width: getHorizontalSize(292),
                              radius: BorderRadius.vertical(
                                top: Radius.circular(getHorizontalSize(279)),
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          width: getHorizontalSize(174),
                          text: "Explore".toUpperCase(),
                          margin: getMargin(
                            top: 40,
                          ),
                          buttonStyle: CustomButtonStyles.fillWhiteA,
                          buttonTextStyle: theme.textTheme.labelLarge!,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 43,
                    ),
                    child: Text(
                      "Recomended looks for you".toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 44,
                        right: 95,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Gender",
                                    style: CustomTextStyles.titleSmallGray60001,
                                  ),
                                  TextSpan(
                                    text: ": ",
                                    style: CustomTextStyles.titleSmallGray60002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomDropDown(
                            width: getHorizontalSize(67),
                            icon: Container(
                              margin: getMargin(
                                left: 2,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgChevronright2,
                              ),
                            ),
                            margin: getMargin(
                              left: 10,
                              bottom: 1,
                            ),
                            hintText: "Female",
                            hintStyle: CustomTextStyles.bodyMediumGray60002,
                            items: dropdownItemList,
                            onChanged: (value) {},
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Style",
                                    style: CustomTextStyles.titleSmallGray60001,
                                  ),
                                  TextSpan(
                                    text: ":",
                                    style: CustomTextStyles.titleSmallGray60002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomDropDown(
                            width: getHorizontalSize(87),
                            icon: Container(
                              margin: getMargin(
                                left: 2,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgChevronright2,
                              ),
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            hintText: "Partywear",
                            hintStyle: CustomTextStyles.bodyMediumGray60002,
                            items: dropdownItemList1,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 7,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Price range",
                                    style: CustomTextStyles.titleSmallGray60001,
                                  ),
                                  TextSpan(
                                    text: ":",
                                    style: CustomTextStyles.titleSmallGray60002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomDropDown(
                            width: getHorizontalSize(31),
                            icon: Container(
                              margin: getMargin(
                                left: 2,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgChevronright2,
                              ),
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            hintText: "All",
                            hintStyle: CustomTextStyles.bodyMediumGray60002,
                            items: dropdownItemList2,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    padding: getPadding(
                      all: 6,
                    ),
                    decoration: AppDecoration.outlineGray,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1385,
                          height: getVerticalSize(407),
                          width: getHorizontalSize(346),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 31,
                          ),
                          child: Text(
                            "In This look".toUpperCase(),
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 35,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage56x56,
                                height: getSize(56),
                                width: getSize(56),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(28),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 7,
                                  bottom: 7,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "43.90",
                                      style: CustomTextStyles
                                          .labelLargeGray900Medium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "Cotton black dress",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              indent: getHorizontalSize(82),
                              endIndent: getHorizontalSize(21),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 11,
                            right: 80,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage1,
                                height: getSize(56),
                                width: getSize(56),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(28),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 7,
                                    bottom: 7,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "12.50",
                                        style: CustomTextStyles
                                            .labelLargeGray900Medium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 10,
                                        ),
                                        child: Text(
                                          "Saddle shoulder bag with hardware ",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              indent: getHorizontalSize(82),
                              endIndent: getHorizontalSize(21),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 11,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2,
                                height: getSize(56),
                                width: getSize(56),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(28),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 7,
                                  bottom: 7,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "99.30",
                                      style: CustomTextStyles
                                          .labelLargeGray900Medium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "Leather shoes",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              indent: getHorizontalSize(82),
                              endIndent: getHorizontalSize(21),
                            ),
                          ),
                        ),
                        CustomOutlinedButton(
                          text: "Buy it now".toUpperCase(),
                          margin: getMargin(
                            left: 10,
                            top: 19,
                            right: 10,
                            bottom: 18,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 49,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(20),
                          width: getSize(20),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(20),
                          width: getSize(20),
                          margin: getMargin(
                            left: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 64,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 32,
                      right: 16,
                      bottom: 32,
                    ),
                    decoration: AppDecoration.fillBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage14,
                          height: getVerticalSize(204),
                          width: getHorizontalSize(231),
                          radius: BorderRadius.circular(
                            getHorizontalSize(12),
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 42,
                          ),
                          child: Text(
                            "Get 20% off".toUpperCase(),
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Text(
                            "Leave your email and get a discount",
                            style:
                                CustomTextStyles.bodyMediumSecondaryContainer,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 28,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextFormField(
                                width: getHorizontalSize(234),
                                controller: emailController,
                                hintText: "Email",
                                hintStyle:
                                    CustomTextStyles.labelLargeBluegray400,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                contentPadding: getPadding(
                                  left: 16,
                                  top: 12,
                                  right: 16,
                                  bottom: 12,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillWhiteA,
                                fillColor: appTheme.whiteA700,
                              ),
                              CustomElevatedButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(114),
                                text: "Subscribe",
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeWhiteA700,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 16,
            right: 22,
            bottom: 46,
          ),
          decoration: AppDecoration.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Ⓒ 2021 Shopsie",
                style: theme.textTheme.bodySmall,
              ),
              Spacer(),
              Text(
                "Privacy & Cookies",
                style: CustomTextStyles.bodySmallGray200,
              ),
              Padding(
                padding: getPadding(
                  left: 32,
                ),
                child: Text(
                  "Ts&Cs",
                  style: CustomTextStyles.bodySmallGray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
