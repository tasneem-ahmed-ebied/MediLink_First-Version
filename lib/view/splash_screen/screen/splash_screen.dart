import 'package:flutter/material.dart';
import 'package:medi_link/core/color_manager.dart';
import 'package:medi_link/core/font_manager.dart';
import 'package:medi_link/core/height_manager.dart';
import 'package:medi_link/core/icon_manager.dart';
import 'package:medi_link/core/padding_manager.dart';
import 'package:medi_link/core/radius_manager.dart';
import 'package:medi_link/core/route_manager.dart';
import 'package:medi_link/core/utils.dart';
import 'package:medi_link/core/width_manager.dart';

import '../../../controller/onboarding_page_controller.dart';
import '../widget/splach_screen_appbar.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late OnbourdingPagesController _controller;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _controller = OnbourdingPagesController(context: context);
    _controller.initStream();
    _pageController = PageController();
  }
  void dispose() {
    _controller.disposeStream();
    _pageController.dispose();
    super.dispose();
  }
  void _onPageChanged(int index) {
    _controller.index = index;
    _controller.sinkNextPage.add(index);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SplachScreenAppBar(),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: PaddingManager.p16,vertical: PaddingManager.p25),
        child: InkWell(
          onTap: () {
            if (_controller.index < Utils.listOnbourdingPages.length - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              Navigator.pushNamed(context, RoutesNames.loginUsers);
            }
          },
          child: Container(
            height: HeightManager.h61,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadiusGeometry.circular(RadiusValuesManager.r20)
            ),
            child: Center(child: Text(Utils.next,style: TextStyle(color: ColorManager.white,fontSize: FontSizeManagers.f20,fontWeight: FontWeight.bold,fontFamily: FontsManagers.sansSerif),)),
          ),
        ),
      ),
      backgroundColor: Colors.white,

      body: StreamBuilder(
        stream: _controller.streamNextPage,
        initialData: _controller.index,
        builder: (BuildContext context, asyncSnapshot) {
          // int index = asyncSnapshot.data ?? 0;
          // final model = Utils.listOnbourdingPages[index];

        return Center(
          child: PageView.builder(
    controller: _pageController,
    itemCount: Utils.listOnbourdingPages.length,
    onPageChanged: _onPageChanged,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,pageIndex){
              final pageModel = Utils.listOnbourdingPages[pageIndex];
              return Column(children: [
            Padding(
              padding:  EdgeInsets.only(top: PaddingManager.p51),
              child: Container(
                height: HeightManager.h216,
                width: WidthManagers.w216,
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: BorderRadiusGeometry.circular(RadiusValuesManager.r30)

                ),
                child: Icon(pageModel.icon,color: ColorManager.white,size: IconSizeManager.i80,),
              ),
            ),
              SizedBox(height: HeightManager.h30,),
              Text(pageModel.title,style: TextStyle(color: ColorManager.darbBlue,fontSize: FontSizeManagers.f30),),
              SizedBox(height: HeightManager.h20,),
              Text(pageModel.description,style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f13,),textAlign: TextAlign.center,)
            ]);

            }),
      );}
    ));
  }
}


