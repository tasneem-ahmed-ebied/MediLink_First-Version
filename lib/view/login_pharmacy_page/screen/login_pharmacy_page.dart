import 'package:flutter/material.dart';
import 'package:medi_link/core/height_manager.dart';
import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/route_manager.dart';
import '../../../core/utils.dart';
import '../../login_user_page/widget/text_form_field_for_gmail.dart';
import '../../login_user_page/widget/text_form_field_for_password.dart';

class LoginPharmacy extends StatefulWidget {
  const LoginPharmacy({super.key});

  @override
  State<LoginPharmacy> createState() => _LoginPharmacyState();
}

class _LoginPharmacyState extends State<LoginPharmacy> {
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
                  Image.asset(AssetsValuesManager.pharmacyLogo),
                  SizedBox(height: HeightManager.h25),

                  Text(
                    Utils.pharmacyPortal,
                    style: TextStyle(
                      color: ColorManager.darbBlue,
                      fontSize: FontSizeManagers.f25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: HeightManager.h10),

                  Text(
                    Utils.manageYourPharmacyOnMedilink,
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
                        Navigator.pushNamed(context,RoutesNames.forgetPassword);
                      },
                      child: Text(
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
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, RoutesNames.homePharmacyPage);
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
                          Utils.signInToPortal,
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

                  SizedBox(height: HeightManager.h20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.choosePage);
                    },
                    child: Text(
                      Utils.backToRoleSection,
                      style: TextStyle(
                        color: ColorManager.primary,
                        fontSize: FontSizeManagers.f12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
