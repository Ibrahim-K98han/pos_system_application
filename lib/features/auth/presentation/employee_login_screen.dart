import 'package:flutter/material.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/common_widgets/app_text_form_filed.dart';
import 'package:pos_system/common_widgets/global_heading.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class EmployeeLoginScreen extends StatelessWidget {
  const EmployeeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GlobalHeadline(
                  title: 'He is a connector',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cashier code',
                      style: TextFontStyle.headline16w500c2A3256StyleRubik
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8),
                    AppTextFormFiled(hintText: 'ABC234564'),
                    SizedBox(height: 24),
                    Text(
                      'Password',
                      style: TextFontStyle.headline16w500c2A3256StyleRubik
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8),
                    AppTextFormFiled(hintText: '8 characters minimum'),
                    SizedBox(height: 40),

                    AppCustomButton(
                      btnName: 'Log in',
                      borderRadius: 15,
                      isBorder: true,
                      borderColor: AppColor.c1A72DD,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.cE8F1FC,
                        borderRadius: BorderRadius.circular(16),
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
    );
  }
}
