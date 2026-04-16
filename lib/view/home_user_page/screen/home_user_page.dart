import 'package:flutter/material.dart';
import 'package:medi_link/core/color_manager.dart';
import 'package:medi_link/core/font_manager.dart';
import 'package:medi_link/core/height_manager.dart';
import 'package:medi_link/core/radius_manager.dart';
import 'package:medi_link/core/utils.dart';
import 'package:medi_link/core/width_manager.dart';
import '../../../core/assets_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/route_manager.dart';
import '../widget/hello_for_user.dart';
import '../widget/search_for_medicine_user.dart';
import '../widget/stack_for_options_for_user.dart';

class HomeUserPage extends StatelessWidget {
  const HomeUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadius.circular(RadiusValuesManager.r25),
              ),
              child: Padding(
                padding:  EdgeInsets.only(
                  top: PaddingManager.p60,
                  right: PaddingManager.p25,
                  left: PaddingManager.p25,
                  bottom: PaddingManager.p25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Utils.hello,
                      style: TextStyle(
                        color: ColorManager.white,
                        fontSize: FontSizeManagers.f16,
                      ),
                    ),
                    SizedBox(height: HeightManager.h4),
                    HelloForUser(),
                    SizedBox(height: HeightManager.h20),
                    SearchForMedicineUser(),
                    SizedBox(height: HeightManager.h20),
                    StackForOptionsForUser(),
                  ],
                ),
              ),
            ),
            SizedBox(height: HeightManager.h20),
            ////////////////////
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: PaddingManager.p10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Utils.popularMedicines,
                        style: TextStyle(
                          color: ColorManager.grey,
                          fontSize: FontSizeManagers.f16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesNames.categories);
                        },
                        child: Text(
                          Utils.viewAll,
                          style: TextStyle(
                            color: ColorManager.primary,
                            fontSize: FontSizeManagers.f12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: HeightManager.h10),
                  ///////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.medicineDate),
                        child: Container(
                          height: HeightManager.h270,
                          width: WidthManagers.w171,
                          padding:  EdgeInsets.all(PaddingManager.p16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r25,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image Area
                              Container(
                                height: HeightManager.h124,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AssetsValuesManager.paracatemol,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              const Text(
                                Utils.paracetamol,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                               Text(
                                Utils.painReliefAndFeverReducer,
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: FontSizeManagers.f12,
                                ),
                              ),

                              SizedBox(height: HeightManager.h2),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    Utils.sale5099,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  Container(
                                    padding:  EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      Utils.inStock,
                                      style: TextStyle(
                                        color: ColorManager.primary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: WidthManagers.w2,),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.medicineDate),
                        child: Container(
                          height: HeightManager.h270,
                          width: WidthManagers.w171,
                          padding:  EdgeInsets.all(PaddingManager.p16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r25,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image Area
                              Container(
                                height: HeightManager.h124,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AssetsValuesManager.ibuprofen,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              const Text(
                                Utils.ibuprofen,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                              Text(
                                Utils.vitaminDx,
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: FontSizeManagers.f12,
                                ),
                              ),

                              SizedBox(height: HeightManager.h2),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    Utils.sale7050,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      Utils.inStock,
                                      style: TextStyle(
                                        color: ColorManager.primary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: HeightManager.h6,),
                  //*
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.medicineDate),
                        child: Container(
                          height: HeightManager.h270,
                          width: WidthManagers.w171,
                          padding:  EdgeInsets.all(PaddingManager.p16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r25,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image Area
                              Container(
                                height: HeightManager.h124,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AssetsValuesManager.vitaminD,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              const Text(
                                Utils.vitaminDx,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                               Text(
                                Utils.dailySupplement,
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: FontSizeManagers.f12,
                                ),
                              ),

                              SizedBox(height: HeightManager.h2),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    Utils.sale5099,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      Utils.inStock,
                                      style: TextStyle(
                                        color: ColorManager.primary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: WidthManagers.w2,),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.medicineDate),
                        child: Container(
                          height: HeightManager.h270,
                          width: WidthManagers.w171,
                          padding:  EdgeInsets.all(PaddingManager.p16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r25,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image Area
                              Container(
                                height: HeightManager.h124,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AssetsValuesManager.aspirin,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              const Text(
                                Utils.aspirin,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                               Text(
                                Utils.bloodThinnerAndPainRelief,
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: FontSizeManagers.f12,
                                ),
                              ),

                              SizedBox(height: HeightManager.h2),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    Utils.sale7050,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      Utils.inStock,
                                      style: TextStyle(
                                        color: ColorManager.primary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: HeightManager.h6,),
                  //*
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.medicineDate),
                        child: Container(
                          height: HeightManager.h270,
                          width: WidthManagers.w171,
                          padding:  EdgeInsets.all(PaddingManager.p16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r25,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image Area
                              Container(
                                height: HeightManager.h124,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AssetsValuesManager.amoxicillin,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              const Text(
                                Utils.amoxicillin,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                               Text(
                                Utils.antibioticMedicine,
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: FontSizeManagers.f12,
                                ),
                              ),

                              SizedBox(height: HeightManager.h2),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    Utils.sale5099,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      Utils.inStock,
                                      style: TextStyle(
                                        color: ColorManager.primary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: WidthManagers.w2,),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesNames.medicineDate),
                        child: Container(
                          height: HeightManager.h270,
                          width: WidthManagers.w171,
                          padding:  EdgeInsets.all(PaddingManager.p16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              RadiusValuesManager.r25,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image Area
                              Container(
                                height: HeightManager.h124,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AssetsValuesManager.multiVitamin,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              const Text(
                                Utils.multiVitamin,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                               Text(
                                Utils.completeDailyNutrition,
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: FontSizeManagers.f12,
                                ),
                              ),

                              SizedBox(height: HeightManager.h2),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    Utils.sale7050,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      Utils.inStock,
                                      style: TextStyle(
                                        color: ColorManager.primary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: HeightManager.h6,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
