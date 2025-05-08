import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/auth/presentation/login_the_owner.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureTextPass = true;
  bool _obscureTextConfPass = true;
  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                        'Password',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      AppTextFormFiled(
                        controller: _passwordController,
                        obscureText: _obscureTextPass,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureTextPass = !_obscureTextPass;
                            });
                          },
                          icon: Icon(
                            _obscureTextPass
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        hintText: 'Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Confirm Password',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      AppTextFormFiled(
                        controller: _confirmPasswordController,
                        obscureText: _obscureTextConfPass,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureTextConfPass = !_obscureTextConfPass;
                            });
                          },
                          icon: Icon(
                            _obscureTextConfPass
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        hintText: 'Confirm Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
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
                                builder: (context) => LoginTheOwner(),
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
