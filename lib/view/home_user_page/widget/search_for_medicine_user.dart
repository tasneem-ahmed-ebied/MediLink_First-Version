import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/utils.dart';

class SearchForMedicineUser extends StatelessWidget {
  const SearchForMedicineUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: Utils.searchMedicine,
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: ColorManager.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusValuesManager.r25),
          borderSide: BorderSide(
            color: ColorManager.blue300,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
