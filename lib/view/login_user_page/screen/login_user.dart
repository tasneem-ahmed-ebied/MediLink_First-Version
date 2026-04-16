import 'package:flutter/material.dart';
import 'package:medi_link/core/height_manager.dart';
import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/route_manager.dart';
import '../../../core/utils.dart';
import '../widget/sign_in_button.dart';
import '../widget/sign_up_button_text.dart';
import '../widget/text_form_field_for_gmail.dart';
import '../widget/text_form_field_for_password.dart';

class LoginUsers extends StatefulWidget {
  const LoginUsers({super.key});

  @override
  State<LoginUsers> createState() => _LoginUsersState();
}

class _LoginUsersState extends State<LoginUsers> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: PaddingManager.p20,
              vertical: PaddingManager.p110,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(AssetsValuesManager.logo2),
                  SizedBox(height: HeightManager.h25),

                  Text(
                    Utils.welcomeBack,
                    style: TextStyle(
                      color: ColorManager.darbBlue,
                      fontSize: FontSizeManagers.f25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: HeightManager.h10),

                  Text(
                    Utils.signInToYourAccount,
                    style: TextStyle(
                      color: ColorManager.grey,
                      fontSize: FontSizeManagers.f12,
                    ),
                  ),

                  SizedBox(height: HeightManager.h40),

                  /// EMAIL
                  TextFormFieldForGmail(),

                  SizedBox(height: HeightManager.h20),

                  /// PASSWORD
                  TextFormFieldForPassword(),

                  SizedBox(height: HeightManager.h10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesNames.forgetPassword);
                      },
                      child:  Text(
                        Utils.forgetPassword,
                        style: TextStyle(
                          color: ColorManager.primary,
                          fontSize: FontSizeManagers.f12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: HeightManager.h30),

                  /// SIGN IN BUTTON
                  SignInButton(formKey: _formKey),

                  SizedBox(height: HeightManager.h15),

                  SignUpButtonText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
