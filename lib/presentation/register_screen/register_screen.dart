import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 15,
              top: 98,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hello! Register to get started",
                  style: theme.textTheme.headlineSmall,
                ),
                CustomTextFormField(
                  controller: firstNameController,
                  margin: getMargin(
                    left: 1,
                    top: 40,
                  ),
                  hintText: "First Name",
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                ),
                CustomTextFormField(
                  controller: lastNameController,
                  margin: getMargin(
                    left: 1,
                    top: 12,
                  ),
                  hintText: "Last Name",
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                ),
                CustomTextFormField(
                  controller: emailController,
                  margin: getMargin(
                    left: 1,
                    top: 12,
                  ),
                  hintText: "Email",
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                  textInputType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  controller: passwordController,
                  margin: getMargin(
                    left: 1,
                    top: 12,
                  ),
                  hintText: "Password",
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                CustomElevatedButton(
                  text: "Register",
                  margin: getMargin(
                    left: 1,
                    top: 24,
                  ),
                  buttonTextStyle:
                      CustomTextStyles.titleMediumLatoWhiteA700Medium,
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 38,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 7,
                          bottom: 8,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(112),
                          child: Divider(
                            color: appTheme.indigo50,
                          ),
                        ),
                      ),
                      Text(
                        "Or Login with",
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                          bottom: 8,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(111),
                          child: Divider(
                            color: appTheme.indigo50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getVerticalSize(56),
                        width: getHorizontalSize(168),
                        padding: getPadding(
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFacebookic,
                          height: getSize(26),
                          width: getSize(26),
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(56),
                        width: getHorizontalSize(168),
                        padding: getPadding(
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgGoogleic,
                          height: getSize(26),
                          width: getSize(26),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 43,
                      bottom: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Login Now",
                            style: CustomTextStyles.titleSmallMontserratPrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
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
