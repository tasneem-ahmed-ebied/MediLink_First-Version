import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/utils.dart';

class TextFormFieldForFullName extends StatelessWidget {
  const TextFormFieldForFullName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return Utils.enterYourFullName;
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: Utils.fullName,
        prefixIcon: const Icon(Icons.person_outline),
        filled: true,
        fillColor: ColorManager.blue100,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
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

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        errorStyle: const TextStyle(height: 0),
      ),
    );
  }
}
