import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/auth/presentation/create_account_screen.dart';
import 'package:pos_system/features/auth/presentation/login_screen.dart';
import 'package:pos_system/features/onboarding/presentation/widgets/carusal_slider_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Text(
                'ApName',
                style: TextFontStyle.headline32w500c1A72DDStyleRubik,
              ),
              SizedBox(height: 60.h),

              ///===================Slider============================///
              CarusalSliderWidget(),
              SizedBox(height: 32.h),

              ///======================== Create Account Btn=================///
              AppCustomButton(
                btnName: 'Create a new account',
                isBorder: true,
                height: 55.h,
                borderRadius: 15.r,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountScreen(),
                    ),
                  );
                },
              ),

              SizedBox(height: 18.h),

              ///======================== Connector Btn=================///
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  side: BorderSide(color: AppColor.c1A72DD),
                ),
                child: Text(
                  'He is a connector',
                  style: TextFontStyle.headline16w500c2A3256StyleRubik.copyWith(
                    color: AppColor.c1A72DD,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
