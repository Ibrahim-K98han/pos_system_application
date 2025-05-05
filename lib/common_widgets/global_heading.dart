import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart' show TextFontStyle;

class GlobalHeadline extends StatelessWidget {
  const GlobalHeadline({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
              color: AppColor.c1A72DD,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: AppColor.cFFFFFF,
              size: 18.sp,
            ),
          ),
        ),
        SizedBox(width: 30.w),
        Text(
          title,
          style: TextFontStyle.headline32w500c1A72DDStyleRubik.copyWith(
            fontSize: 28.sp,
          ),
        ),
      ],
    );
  }
}
