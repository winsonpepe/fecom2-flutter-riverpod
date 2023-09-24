import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

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
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: getHorizontalSize(261),
                  margin: getMargin(
                    left: 8,
                    right: 88,
                  ),
                  child: Text(
                    "Welcome back! Glad to see you, Again!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.46,
                    ),
                  ),
                ),
                CustomTextFormField(
                  controller: emailController,
                  margin: getMargin(
                    top: 37,
                  ),
                  hintText: "Enter your email",
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                  textInputType: TextInputType.emailAddress,
                  contentPadding: getPadding(
                    left: 12,
                    top: 15,
                    right: 12,
                    bottom: 15,
                  ),
                ),
                CustomTextFormField(
                  controller: passwordController,
                  margin: getMargin(
                    top: 15,
                  ),
                  hintText: "Enter your password",
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                    margin: getMargin(
                      left: 12,
                      top: 12,
                      right: 23,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgEye,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(48),
                  ),
                  obscureText: true,
                  contentPadding: getPadding(
                    left: 24,
                    top: 15,
                    bottom: 15,
                  ),
                ),
                CustomElevatedButton(
                  text: "Login",
                  margin: getMargin(
                    top: 24,
                  ),
                  buttonTextStyle:
                      CustomTextStyles.titleMediumLatoWhiteA700Medium,
                ),
                Padding(
                  padding: getPadding(
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
                        decoration: AppDecoration.white.copyWith(
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
                        decoration: AppDecoration.white.copyWith(
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
                            text: "Don’t have an",
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          TextSpan(
                            text: " account?",
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Register Now",
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
