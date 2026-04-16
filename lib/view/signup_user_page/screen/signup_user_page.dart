import 'package:flutter/material.dart';
import 'package:medi_link/view/signup_user_page/widgets/text_form_field_for_fullname.dart';
import 'package:medi_link/view/signup_user_page/widgets/text_form_field_for_phonenumber.dart';

import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/route_manager.dart';
import '../../../core/utils.dart';
import '../../login_user_page/widget/text_form_field_for_gmail.dart';
import '../../login_user_page/widget/text_form_field_for_password.dart';

class SignupUserPage extends StatefulWidget {
  const SignupUserPage({super.key});

  @override
  State<SignupUserPage> createState() => _SignupUserPageState();
}

class _SignupUserPageState extends State<SignupUserPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingManager.p20,
              vertical: PaddingManager.p110,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AssetsValuesManager.logo2),
                  SizedBox(height: HeightManager.h25),

                  Text(
                    Utils.createAccount,
                    style: TextStyle(
                      color: ColorManager.darbBlue,
                      fontSize: FontSizeManagers.f25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: HeightManager.h10),

                  Text(
                    Utils.joinUsToday,
                    style: TextStyle(
                      color: ColorManager.grey,
                      fontSize: FontSizeManagers.f12,
                    ),
                  ),

                  SizedBox(height: HeightManager.h40),
                  TextFormFieldForFullName(),

                  SizedBox(height: HeightManager.h10),
                  TextFormFieldForGmail(),

                  SizedBox(height: HeightManager.h10),
                  TextFormFieldForPhoneNumber(),

                  SizedBox(height: HeightManager.h10),
                  TextFormFieldForPassword(),

                  SizedBox(height: HeightManager.h10),


                  SizedBox(height: HeightManager.h30),

                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, RoutesNames.homeUserPage);
                      }
                    },
                    child: Container(
                      height: HeightManager.h55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(
                          RadiusValuesManager.r20,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          Utils.createAccount,
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: FontSizeManagers.f20,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontsManagers.chamos,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: HeightManager.h10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Utils.alreadyHaveAnAccount,
                        style: TextStyle(
                          color: ColorManager.grey,
                          fontSize: FontSizeManagers.f12,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesNames.loginUsers);
                        },
                        child: Text(
                          Utils.signIn,
                          style: TextStyle(
                            color: ColorManager.primary,
                            fontSize: FontSizeManagers.f12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
