import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/app_constants.dart';

import 'package:space_app/custom_widget/arrow_button.dart';
import 'package:space_app/models/planet.dart';

import '../../core/App_colors.dart';
import '../../core/app_assets.dart';
import '../../core/app_styles.dart';

class PlanetDetails extends StatelessWidget {

 final Flutter3DController controller = Flutter3DController();

  PlanetDetails({super.key});
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Planet;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(AppAssets.halfEarth),
                  Image.asset(AppAssets.halfEarthShadow),
                  Positioned(
                      top: 13.8.h,
                      left: 144.w,
                      child: Text(
                        args.name,
                        style: AppStyles.white24W700.copyWith(
                          fontSize: 24.sp,
                        ),
                      )),
                  Positioned(
                    top: 13.8.h,
                    child: ArrowButton(
                        icon: Icons.arrow_back,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Positioned(
                      top: 138.h,
                      left: 14.4.w,
                      child: Text(
                        args.title,
                        style: AppStyles.white24W700.copyWith(
                          fontSize: 24.sp,
                        ),
                      )),
                ]),
                SizedBox(
                    height: 241.5.h,
                    child: Flutter3DViewer(
                      src: args.planet3dPath,
                      controller: controller,
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.2.w),
                  child: Text(
                    AppConstants.aboutText,
                    style: AppStyles.white24W700.copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.8.h,
                ),
                Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Text(
                    args.about,
                    style: AppStyles.white20W600.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.6.h,
                ),
              ],
            ),
          )),
    );
  }
}
