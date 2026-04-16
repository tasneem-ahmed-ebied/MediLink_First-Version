import 'package:flutter/material.dart';
import 'package:medi_link/core/utils.dart';
import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/route_manager.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesNames.splash);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsValuesManager.logo1),
            Text(
              Utils.mediLink,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: FontSizeManagers.f35,
                fontFamily: FontsManagers.sansSerif,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: HeightManager.h10),
            Text(
              Utils.yourHealthcareConnection,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: FontSizeManagers.f15,
                fontFamily: FontsManagers.sansSerif,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: HeightManager.h50),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesNames.splash);
              },
              child: CircularProgressIndicator(color: ColorManager.white),
            ),
          ],
        ),
      ),
    );
  }
}
