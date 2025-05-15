import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

PreferredSizeWidget commonAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: TextFontStyle.headline24w500c2A3256StyleRubik.copyWith(
        color: AppColor.c1A72DD,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: SvgPicture.asset(
      'assets/images/hamburger_icon.svg',
      width: 34.w,
      height: 34.h,
    ),
  );
}
