import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/icon_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/utils.dart';
import '../../../core/width_manager.dart';

class HelloForUser extends StatelessWidget {
  const HelloForUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Utils.letUsStart,
          style: TextStyle(
            color: ColorManager.white,
            fontSize: FontSizeManagers.f25,
          ),
        ),
        Row(
          children: [
            Container(
              height: HeightManager.h50,
              width: WidthManagers.w50,
              decoration: BoxDecoration(
                color: ColorManager.blue300,
                borderRadius: BorderRadiusGeometry.circular(
                  RadiusValuesManager.r60,
                ),
              ),
              child: Icon(
                Icons.notifications,
                size: IconSizeManager.i20,
                color: ColorManager.white,
              ),
            ),
            SizedBox(width: WidthManagers.w8),
            Container(
              height: HeightManager.h50,
              width: WidthManagers.w50,
              decoration: BoxDecoration(
                color: ColorManager.blue300,
                borderRadius: BorderRadiusGeometry.circular(
                  RadiusValuesManager.r60,
                ),
              ),
              child: Icon(
                Icons.shopping_cart,
                size: IconSizeManager.i20,
                color: ColorManager.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
