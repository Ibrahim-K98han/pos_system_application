import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final TextEditingController _cashierCodeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  void dispose() {
    _cashierCodeController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalHeadline(
                    title: 'He is a connector',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 24.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email or Phone Number',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      AppTextFormFiled(
                        hintText: 'Email or Phone Number',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        'Password',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      AppTextFormFiled(
                        obscureText: _obscureText,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        hintText: '8 characters minimum',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 32.h),
                      Text(
                        'send an OTP',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 12.h),

                      ///=======================OTP all Social Button========================///
                      OtpSocialBtn(),
                      SizedBox(height: 60.h),
                      AppCustomButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            print('Form Valid');
                          }
                        },
                        btnName: 'Log in',
                        borderRadius: 15.r,
                        isBorder: true,
                        borderColor: AppColor.c1A72DD,
                        padding: EdgeInsets.symmetric(vertical: 16.h),
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
      ),
    );
  }
}
