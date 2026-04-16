import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/utils.dart';

class TextFormFieldSquareForgetPassword extends StatelessWidget {


  const TextFormFieldSquareForgetPassword({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return " ";
        }



        return null;
      },

      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorManager.blue400,
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
