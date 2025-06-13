import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/app_constants.dart';
import 'package:space_app/core/app_routes.dart';
import 'package:space_app/core/app_styles.dart';
import 'package:space_app/custom_widget/arrow_button.dart';

import '../../core/App_colors.dart';
import '../../core/app_assets.dart';
import '../../custom_widget/custom_elevated_button.dart';
import '../../models/planet.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          children: [
            Stack(children: [
              Image.asset(AppAssets.halfEarth),
              Image.asset(AppAssets.halfEarthShadow),
              Positioned(
                  top: 13.8.h,
                  left: 126.w,
                  child: Text(
                    AppConstants.exploreText,
                    style: AppStyles.white24W700.copyWith(
                      fontSize: 24.sp,
                    ),
                  )),
              Positioned(
                  top: 138.h,
                  left: 14.4.w,
                  child: Text(
                    AppConstants.whichPlanetText,
                    style: AppStyles.white24W700.copyWith(
                      fontSize: 24.sp,
                    ),
                  )),
            ]),
            SizedBox(
              height: 289.8.h,
              child: PageView.builder(
                  onPageChanged: (index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Image.asset(
                        height: 13.8.h,
                        width: 7.2.w,
                        Planet.getPlanetDetails(index).imagePath);
                  },
                  itemCount: Planet.getPlanetsLength()),
            ),
            SizedBox(
              height: 13.8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowButton(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        controller.previousPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.easeIn);
                      }),
                  Text(
                    Planet.plantsName[currentIndex],
                    style: AppStyles.white24W700.copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                  ArrowButton(
                      icon: Icons.arrow_forward,
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.easeIn);
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 34.5.h,
            ),
            CustomElevatedButton(
                text: '${AppConstants.exploreText} ${Planet.plantsName[currentIndex]}',
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.planetRoute,
                      arguments: Planet.getPlanetDetails(currentIndex));
                }),
          ],
        ),
      ),
    );
  }
}
