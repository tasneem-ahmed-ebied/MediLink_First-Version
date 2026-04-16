import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medi_link/core/color_manager.dart';
import 'package:medi_link/core/font_manager.dart';
import 'package:medi_link/core/height_manager.dart';
import 'package:medi_link/core/route_manager.dart';
import 'package:medi_link/core/width_manager.dart';

import '../../../core/padding_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/utils.dart';
import '../widget/text_form_field_square_forgetpassword.dart';

class ForgetPassword extends StatefulWidget {

  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: PaddingManager.p32,
            horizontal: PaddingManager.p20,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Back Icon
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.loginUsers);
                    },
                    child: Icon(
                      CupertinoIcons.back,
                      size: 20,
                      color: ColorManager.primary,
                    ),
                  ),
                ),
            
                SizedBox(height: HeightManager.h20),
            
                /// Title
                Text(
                  Utils.verifyYourEmail,
                  style: TextStyle(
                    color: ColorManager.darbBlue,
                    fontSize: FontSizeManagers.f20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            
                SizedBox(height: HeightManager.h20),
            
                /// Subtitle
                Text(
                  Utils.enterFiveDigitCode,
                  style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: FontSizeManagers.f15,
                  ),
                ),
            
                SizedBox(height: HeightManager.h30),
            
                /// Code Fields
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    5,
                        (index) => SizedBox(
                      width: WidthManagers.w55,
                      child: TextFormFieldSquareForgetPassword(),
                    ),
                  ),
                ),
            
                SizedBox(height: HeightManager.h45),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, RoutesNames.verifiedForgetPassword);
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
                        Utils.verifyEmail,
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
                SizedBox(height: HeightManager.h10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    Utils.sendCodeAgain,
                    style: TextStyle(
                      color: ColorManager.grey,
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
    );
  }
}