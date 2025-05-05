
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Select ',
              style: TextFontStyle.headline15w400c2A3256StyleRubik,
            ),
            TextSpan(
              text: 'I am the owner ',
              style: TextFontStyle.headline15w400c2A3256StyleRubik
                  .copyWith(color: AppColor.c1A72DD),
            ),
            TextSpan(
              text: 'Or ',
              style:
                  TextFontStyle.headline15w400c2A3256StyleRubik,
            ),
            TextSpan(
              text: 'I am an employee ',
              style: TextFontStyle.headline15w400c2A3256StyleRubik
                  .copyWith(color: AppColor.c1A72DD),
            ),
            TextSpan(
              text: 'to start ',
              style:
                  TextFontStyle.headline15w400c2A3256StyleRubik,
            ),
          ],
        ),
      ),
    );
  }
}
