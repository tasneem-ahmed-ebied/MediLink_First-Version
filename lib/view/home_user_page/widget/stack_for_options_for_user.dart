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

class StackForOptionsForUser extends StatelessWidget {
  const StackForOptionsForUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightManager.h124,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(RadiusValuesManager.r25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding : EdgeInsetsGeometry.symmetric(horizontal: PaddingManager.p25,vertical: PaddingManager.p25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, RoutesNames.scan),
                    child: Icon(
                      Icons.document_scanner_outlined,
                      size: IconSizeManager.i20,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Text(Utils.scanRx,style: TextStyle(color: ColorManager.darbBlue,fontSize: FontSizeManagers.f12)),

              ],
            ),
            Column(
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.nearestPharmacy);
                    },
                    child: Icon(
                      Icons.place,
                      size: IconSizeManager.i20,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Text(Utils.nearby,style: TextStyle(color: ColorManager.darbBlue,fontSize: FontSizeManagers.f12)),

              ],
            ),
            Column(
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.donateMedicinePage);
                    },
                    child: Icon(
                      Icons.favorite,
                      size: IconSizeManager.i20,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Text(Utils.donate,style: TextStyle(color: ColorManager.darbBlue,fontSize: FontSizeManagers.f12)),

              ],
            ),
            Column(
              children: [
                Container(
                  height: HeightManager.h50,
                  width: WidthManagers.w50,
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadiusGeometry.circular(
                      RadiusValuesManager.r60,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.rewardsDonation);
                    },
                    child: Icon(
                      Icons.star,
                      size: IconSizeManager.i20,
                      color: ColorManager.white,
                    ),
                  ),
                ),
                Text(Utils.rewards,style: TextStyle(color: ColorManager.darbBlue,fontSize: FontSizeManagers.f12)),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
