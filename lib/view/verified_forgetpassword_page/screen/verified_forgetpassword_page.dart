import 'package:flutter/material.dart';
import 'package:medi_link/core/color_manager.dart';
import 'package:medi_link/core/font_manager.dart';
import 'package:medi_link/core/height_manager.dart';
import 'package:medi_link/core/icon_manager.dart';
import 'package:medi_link/core/padding_manager.dart';
import 'package:medi_link/core/radius_manager.dart';
import 'package:medi_link/core/utils.dart';
import 'package:medi_link/core/width_manager.dart';

import '../../../core/route_manager.dart';

class VerifiedForgetpasswordPage extends StatelessWidget {
  const VerifiedForgetpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.blue300,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: PaddingManager.p200),
            child: Column(
              children: [Container(
                height: HeightManager.h270,
                width: WidthManagers.w290,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadiusGeometry.circular(RadiusValuesManager.r25),

                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: PaddingManager.p16,vertical: PaddingManager.p16),
                  child: Column(
                    children: [
                      Icon(Icons.verified,color: ColorManager.primary,size: IconSizeManager.i70,),
                      SizedBox(height: HeightManager.h20,),
                      Text(
                        textAlign: TextAlign.center,
                        Utils.yourIdentityHasBeenVerified,style: TextStyle(fontSize: FontSizeManagers.f10,color: ColorManager.grey,),),
                      SizedBox(height: HeightManager.h20,),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.loginUsers),
                        child: Container(
                          height: HeightManager.h40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r20,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              Utils.backToSignInPage,
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize: FontSizeManagers.f12,
                                fontWeight: FontWeight.bold,
                                fontFamily: FontsManagers.chamos,
                              ),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              )],
            ),
          ),
        ),
      ),
    );
  }
}
