import 'package:flutter/material.dart';
import 'package:medi_link/core/assets_manager.dart';
import 'package:medi_link/core/color_manager.dart';
import 'package:medi_link/core/font_manager.dart';

import 'package:medi_link/core/utils.dart';

import '../../../core/height_manager.dart';
import '../widget/continue_as_pharmacy.dart';
import '../widget/continue_as_user.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorManager.blue400, ColorManager.darbBlue],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsValuesManager.logo1),
            SizedBox(height: HeightManager.h10),
            Text(
              Utils.mediLink,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: FontSizeManagers.f35,
                fontFamily: FontsManagers.sansSerif,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: HeightManager.h30),
            ContinueAsUser(),
            SizedBox(height: HeightManager.h20),
            ContinueAsPharmacy(),
          ],
        ),
      ),
    );
  }
}
