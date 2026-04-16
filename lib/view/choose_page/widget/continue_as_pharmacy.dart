import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/icon_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/utils.dart';
import '../../../core/width_manager.dart';
class ContinueAsPharmacy extends StatelessWidget {
  const ContinueAsPharmacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidthManagers.w300,
      height: HeightManager.h171,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(RadiusValuesManager.r25),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: PaddingManager.p32,
          vertical: PaddingManager.p32,
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesNames.loginPharmacyPage);

          },
          child: Row(
            children: [


                Container(
                  width: WidthManagers.w100,
                  height: HeightManager.h100,
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(
                      RadiusValuesManager.r20,
                    ),
                  ),
                  child: Icon(
                    Icons.apartment,
                    color: ColorManager.white,
                    size: IconSizeManager.i50,
                  ),
                ),

              SizedBox(width: WidthManagers.w13),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Utils.continueAsPharmacy,
                    style: TextStyle(
                      color: ColorManager.darbBlue,
                      fontSize: FontSizeManagers.f16,
                      fontFamily: FontsManagers.sansSerif,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: HeightManager.h7),
                  Text(
                    Utils.manageYourPharmacy,
                    style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
