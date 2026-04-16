import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/route_manager.dart';
import '../../../core/utils.dart';

class SignUpButtonText extends StatelessWidget {
  const SignUpButtonText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Utils.notHaveAnAccount,
          style: TextStyle(
            color: ColorManager.grey,
            fontSize: FontSizeManagers.f12,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesNames.signupUserPage);
          },
          child: Text(
            Utils.signUp,
            style: TextStyle(
              color: ColorManager.primary,
              fontSize: FontSizeManagers.f12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
