import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/custom_outlined_button.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatefulWidget {
  const ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAddressDetailsPageState createState() =>
      ProfileAddressDetailsPageState();
}

class ProfileAddressDetailsPageState extends State<ProfileAddressDetailsPage>
    with AutomaticKeepAliveClientMixin<ProfileAddressDetailsPage> {
  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController enterpostalController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 36,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Address 1",
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                      CustomTextFormField(
                        controller: addressController,
                        margin: getMargin(
                          top: 7,
                        ),
                        hintText: "Enter address",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        contentPadding: getPadding(
                          left: 12,
                          top: 15,
                          right: 12,
                          bottom: 15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Address 2",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: addressController1,
                        margin: getMargin(
                          top: 7,
                        ),
                        hintText: "Enter address",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        contentPadding: getPadding(
                          left: 12,
                          top: 15,
                          right: 12,
                          bottom: 15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "City",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: cityController,
                        margin: getMargin(
                          top: 6,
                        ),
                        hintText: "Enter your city",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        contentPadding: getPadding(
                          left: 12,
                          top: 15,
                          right: 12,
                          bottom: 15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Postal Code",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: enterpostalController,
                        margin: getMargin(
                          top: 7,
                        ),
                        hintText: "Enter postal code",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        contentPadding: getPadding(
                          left: 12,
                          top: 15,
                          right: 12,
                          bottom: 15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Phone number",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: phoneNumberController,
                        margin: getMargin(
                          top: 7,
                        ),
                        hintText: "Enter phone number",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                        contentPadding: getPadding(
                          left: 12,
                          top: 15,
                          right: 12,
                          bottom: 15,
                        ),
                      ),
                      CustomOutlinedButton(
                        text: "add another address".toUpperCase(),
                        margin: getMargin(
                          top: 24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Current addresses".toUpperCase(),
                          style: CustomTextStyles.labelLargeGray900_2,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 23,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 25,
                          right: 16,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.fillGray5001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Home address",
                                    style: CustomTextStyles
                                        .labelLargeGray900Medium,
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(16),
                                    width: getSize(16),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                    ),
                                    child: Text(
                                      "Edit",
                                      style: CustomTextStyles.labelLargeMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 30,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Address 1",
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    " Amoy st, 592",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Address 2",
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    " Amoy st, 592",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "City",
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "Los Angeles",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 18,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Postal code",
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "0000000",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 24,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 25,
                          right: 16,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.fillGray5001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Home address",
                                    style: CustomTextStyles
                                        .labelLargeGray900Medium,
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(16),
                                    width: getSize(16),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                    ),
                                    child: Text(
                                      "Edit",
                                      style: CustomTextStyles.labelLargeMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 30,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Address 1",
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    " Amoy st, 592",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Address 2",
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    " Amoy st, 592",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "City",
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "Los Angeles",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 18,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Postal code",
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "0000000",
                                    style: theme.textTheme.bodyMedium,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
