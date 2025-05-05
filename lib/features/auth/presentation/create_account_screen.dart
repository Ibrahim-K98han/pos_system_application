import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
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
                    title: 'Create an account',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    'Email',
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
                  SizedBox(height: 16.h),
                  Text(
                    'Phone number',
                    style: TextFontStyle.headline16w500c2A3256StyleRubik
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 8.h),
                  AppTextFormFiled(
                    hintText: '085551215656',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Phone Number is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Password',
                    style: TextFontStyle.headline16w500c2A3256StyleRubik
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 8.h),
                  AppTextFormFiled(
                    hintText: '***********',
                    obscureText: _obscureText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 50.h),
                  AppCustomButton(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print('Form Valid');
                      }
                    },
                    btnName: 'Log in',
                    borderColor: AppColor.c1A72DD,
                    isBorder: true,
                    borderRadius: 15.r,
                    height: 55.h,
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
