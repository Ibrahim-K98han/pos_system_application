import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class AppCustomButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? onTap;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool isBorder;
  final Color? borderColor;
  final Color? textColor;
  AppCustomButton({
    super.key,
    required this.btnName,
    this.onTap,
    this.borderRadius,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.margin,
    this.padding,
    this.isBorder = false,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? EdgeInsets.zero,
        height: height,
        alignment: Alignment.center,
        width: width ?? double.maxFinite,
        decoration: BoxDecoration(
          color: isBorder ? AppColor.c1A72DD : AppColor.cFFFFFF,
          borderRadius: BorderRadius.circular(borderRadius ?? 50.r),
          border: Border.all(
            color: isBorder ? borderColor ?? Colors.white : Colors.transparent,
          ),
        ),
        child: Text( 
          btnName,
          style: TextFontStyle.headline16w500c2A3256StyleRubik.copyWith(
            color: AppColor.cFFFFFF,
          ),
        ),
      ),
    );
  }
}
