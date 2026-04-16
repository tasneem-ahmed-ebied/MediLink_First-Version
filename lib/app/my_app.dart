import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: (Size(390, 852)),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,

      ),
    );
  }
}
