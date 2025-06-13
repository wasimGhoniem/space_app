import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/app_constants.dart';
import 'package:space_app/core/app_routes.dart';
import 'package:space_app/core/app_styles.dart';

import '../../core/App_colors.dart';
import '../../core/app_assets.dart';
import '../../custom_widget/custom_elevated_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(
                top: 24.h,
                right: 28.8.w,
                bottom: 24.h),
            child: Image.asset(
              AppAssets.halfSpace,
            ),
          ),
          Positioned(
            left: 28.8.w,
            top: 207.h,
            child: Text(
              AppConstants.exploreUniverseText,
              style: AppStyles.white48W900.copyWith(
                fontSize: 48.sp,
              ),
            ),
          ),
          Positioned(
            left: 21.6.w,
            bottom: 13.8.h,
            child: CustomElevatedButton(
              text: AppConstants.exploreText,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.homeRoute);
              },
            ),
          )
        ]),
      ),
    );
  }
}
