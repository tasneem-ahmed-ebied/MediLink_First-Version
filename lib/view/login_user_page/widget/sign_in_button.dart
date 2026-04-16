import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/route_manager.dart';
import '../../../core/utils.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) 
  : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            Utils.signIn,
            style: TextStyle(
              color: ColorManager.white,
              fontSize: FontSizeManagers.f20,
              fontWeight: FontWeight.bold,
              fontFamily: FontsManagers.chamos,
            ),
          ),
        ),
      ),
    );
  }
}
