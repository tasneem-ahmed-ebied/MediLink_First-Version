import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

import '../../../core/color_manager.dart';

class ScanQr extends StatelessWidget {
  const ScanQr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ColorManager.primary,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Row(
                  children: [
                    InkWell(
                        onTap:() {
                          Navigator.pushNamed(context,RoutesNames.homeUserPage);
                        },
                        child: const Icon(Icons.arrow_back,color: ColorManager.primary,)),
                    const SizedBox(width: 8),
                    const Text(
                      'Scan Prescription',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Scan Frame
                Container(
                  height: 260,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: ColorManager.primary,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.camera_alt_outlined, size: 48, color: ColorManager.primary),
                      SizedBox(height: 8),
                      Text(
                         textAlign: TextAlign.center,
                        'Position your prescription within the frame',

                        style: TextStyle(color: ColorManager.primary),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Take Photo Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt,color: ColorManager.primary,),
                    label: const Text('Take Photo'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Upload Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.upload,color: ColorManager.primary,),
                    label: const Text('Upload from Gallery',style: TextStyle(color: ColorManager.primary),),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Tips Box
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color:  ColorManager.blue50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Tips for better scan:',
                        style: TextStyle(fontWeight: FontWeight.bold ,color: ColorManager.primary),
                      ),
                      SizedBox(height: 8),
                      Text('• Ensure good lighting'),
                      Text('• Keep prescription flat'),
                      Text('• Avoid shadows and glare'),
                      Text('• Capture all text clearly'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
