import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medi_link/core/utils.dart';

import '../../../core/assets_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/route_manager.dart';

class SplachScreenAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const SplachScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 550,
      leading: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: PaddingManager.p30),
        child: Row(
          children: [
            Image.asset(AssetsValuesManager.logo2,height: HeightManager.h20,),
            Spacer(),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesNames.loginUsers);
                },
                child: Text(Utils.skip,style: TextStyle(color: Colors.grey,fontSize: FontSizeManagers.f15,fontFamily: FontsManagers.sansSerif,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

