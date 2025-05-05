import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class EmployeeLoginScreen extends StatefulWidget {
  const EmployeeLoginScreen({super.key});

  @override
  State<EmployeeLoginScreen> createState() => _EmployeeLoginScreenState();
}

class _EmployeeLoginScreenState extends State<EmployeeLoginScreen> {
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
                children: [
                  GlobalHeadline(
                    title: 'He is a connector',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 32.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cashier code',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      AppTextFormFiled(
                        hintText: 'ABC234564',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Cashier Code is required';
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
                      SizedBox(height: 40.h),

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
                      SizedBox(height: 40.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 20.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.cE8F1FC,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                'Use the cash register code that can be created by the owner in ',
                            style: TextFontStyle.headline16w500c2A3256StyleRubik
                                .copyWith(fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Manage the store ',
                                style: TextFontStyle
                                    .headline16w500c2A3256StyleRubik
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '-> ',
                                style: TextFontStyle
                                    .headline16w500c2A3256StyleRubik
                                    .copyWith(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'Cashier code',
                                style: TextFontStyle
                                    .headline16w500c2A3256StyleRubik
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
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
