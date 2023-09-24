import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';
import 'package:pepe_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileProfileInfoPage extends StatefulWidget {
  const ProfileProfileInfoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileProfileInfoPageState createState() => ProfileProfileInfoPageState();
}

class ProfileProfileInfoPageState extends State<ProfileProfileInfoPage>
    with AutomaticKeepAliveClientMixin<ProfileProfileInfoPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                        "First Name",
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                      CustomTextFormField(
                        controller: firstNameController,
                        margin: getMargin(
                          top: 15,
                        ),
                        hintText: "Archie",
                        hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Last Name",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: lastNameController,
                        margin: getMargin(
                          top: 15,
                        ),
                        hintText: "Copeland",
                        hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Email address",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      CustomTextFormField(
                        controller: emailController,
                        margin: getMargin(
                          top: 15,
                        ),
                        hintText: "archiecopeland@gmail.com",
                        hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                      CustomElevatedButton(
                        text: "Save edits".toUpperCase(),
                        margin: getMargin(
                          top: 31,
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
