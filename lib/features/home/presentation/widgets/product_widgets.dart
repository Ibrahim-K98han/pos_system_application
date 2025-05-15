// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class ProductWidgets extends StatelessWidget {
  ProductWidgets({super.key, required this.showLevel});

  bool showLevel = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/salad_tune.png',
              width: double.infinity,
              height: 100.h,
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salad Tuna',
                  style: TextFontStyle.headline14w50c2A3256StyleRubik,
                ),
                showLevel == true
                    ? Text(
                      '(Must choose level)',
                      style: TextFontStyle.headline12w400c8E92A4StyleRubik
                          .copyWith(color: AppColor.c9397AA),
                    )
                    : SizedBox.shrink(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GNF 500.67',
                      style: TextFontStyle.headline16w500c2A3256StyleRubik
                          .copyWith(color: AppColor.c1A72DD),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: BoxDecoration(
                          color: AppColor.c1A72DD,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25.sp,
                          color: AppColor.cFFFFFF,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
