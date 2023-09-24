import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileSecurityPage extends StatefulWidget {
  const ProfileSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSecurityPageState createState() => ProfileSecurityPageState();
}

class ProfileSecurityPageState extends State<ProfileSecurityPage>
    with AutomaticKeepAliveClientMixin<ProfileSecurityPage> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

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
                    top: 94,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Change password".toUpperCase(),
                        style: CustomTextStyles.labelLargeGray900_2,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "Current password",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: passwordController,
                        margin: getMargin(
                          top: 14,
                        ),
                        hintText: "Password",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "New password",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: newpasswordController,
                        margin: getMargin(
                          top: 14,
                        ),
                        hintText: "Password",
                        hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      CustomElevatedButton(
                        text: "Update password".toUpperCase(),
                        margin: getMargin(
                          top: 24,
                        ),
                        buttonStyle: CustomButtonStyles.fillGrayTL8,
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
