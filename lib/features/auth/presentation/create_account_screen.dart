import 'package:flutter/material.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalHeadline(
                title: 'Create an account',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 32),
              Text(
                'Email',
                style: TextFontStyle.headline16w500c2A3256StyleRubik.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8),
              AppTextFormFiled(hintText: 'Email or Phone Number'),
              SizedBox(height: 16),
              Text(
                'Phone number',
                style: TextFontStyle.headline16w500c2A3256StyleRubik.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8),
              AppTextFormFiled(hintText: '085551215656'),
              SizedBox(height: 16),
              Text(
                'Password',
                style: TextFontStyle.headline16w500c2A3256StyleRubik.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8),
              AppTextFormFiled(hintText: '***********'),
              SizedBox(height: 50),
              AppCustomButton(
                btnName: 'Log in',
                borderColor: AppColor.c1A72DD,
                isBorder: true,
                borderRadius: 15,
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
