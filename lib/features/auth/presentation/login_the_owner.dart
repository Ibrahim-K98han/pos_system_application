import 'package:flutter/material.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/auth/presentation/widgets/otp_social_btn.dart';

class LoginTheOwner extends StatefulWidget {
  const LoginTheOwner({super.key});

  @override
  State<LoginTheOwner> createState() => _LoginTheOwnerState();
}

class _LoginTheOwnerState extends State<LoginTheOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlobalHeadline(
                  title: 'He is a connector',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email or Phone Number',
                      style: TextFontStyle.headline16w500c2A3256StyleRubik
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8),
                    AppTextFormFiled(hintText: 'Email or Phone Number'),
                    SizedBox(height: 24),
                    Text(
                      'Password',
                      style: TextFontStyle.headline16w500c2A3256StyleRubik
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8),
                    AppTextFormFiled(hintText: '8 characters minimum'),
                    SizedBox(height: 32),
                    Text(
                      'send an OTP',
                      style: TextFontStyle.headline16w500c2A3256StyleRubik
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 12),

                    ///=======================OTP all Social Button========================///
                    OtpSocialBtn(),
                    SizedBox(height: 60),
                    AppCustomButton(
                      btnName: 'Log in',
                      borderRadius: 15,
                      isBorder: true,
                      borderColor: AppColor.c1A72DD,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Forgot your password?',

                        style: TextFontStyle.headline15w400c2A3256StyleRubik
                            .copyWith(
                              color: AppColor.c1A72DD,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.c1A72DD,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
