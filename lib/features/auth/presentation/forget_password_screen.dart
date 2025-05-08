import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/auth/presentation/opt_screen.dart';

import '../../../constants/app_color.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
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
                children: [
                  GlobalHeadline(
                    title: 'He is a connector',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 50.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      AppTextFormFiled(
                        controller: _emailController,
                        hintText: 'Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40.h),

                      AppCustomButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            print('Form Valid');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OptScreen(),
                              ),
                            );
                          }
                        },
                        btnName: 'Submit',
                        borderRadius: 15.r,
                        isBorder: true,
                        borderColor: AppColor.c1A72DD,
                        padding: EdgeInsets.symmetric(vertical: 16.h),
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
