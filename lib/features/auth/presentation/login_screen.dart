import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_system/common_widgets/app_custom_button_with_icon.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/auth/presentation/employee_login_screen.dart';
import 'package:pos_system/features/auth/presentation/login_the_owner.dart';
import 'package:pos_system/features/auth/presentation/widgets/rich_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalHeadline(
                title: 'He is a connector',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to ApName!',
                    style: TextFontStyle.headline24w500c2A3256StyleRubik,
                  ),
                  RichTextWidget(),
                  SizedBox(height: 16.h),
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/login.svg',
                      width: 160.w,
                      height: 180.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  AppCustomButtonWithIcon(
                    buttontext: 'I am the owner',
                    icon: Icons.person,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginTheOwner(),
                        ),
                      );
                    },
                    buttonDecoration: BoxDecoration(
                      color: AppColor.c1A72DD,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Center(
                    child: Text(
                      'Or',
                      style: TextFontStyle.headline15w400c2A3256StyleRubik,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  AppCustomButtonWithIcon(
                    buttontext: 'I am an employee',
                    icon: Icons.group_sharp,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmployeeLoginScreen(),
                        ),
                      );
                    },
                    buttonDecoration: BoxDecoration(
                      color: AppColor.c1A72DD,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextFontStyle.headline17w400c2A3256StyleRubik,
                        ),
                        Text(
                          'Create a new account',
                          style: TextFontStyle.headline17w400c2A3256StyleRubik
                              .copyWith(
                                color: AppColor.c1A72DD,
                                fontSize: 14.sp,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.c1A72DD,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
