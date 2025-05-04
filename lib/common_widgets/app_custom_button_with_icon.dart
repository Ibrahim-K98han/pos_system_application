// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class AppCustomButtonWithIcon extends StatelessWidget {
  final String buttontext;
  final Decoration buttonDecoration;
  final IconData? icon;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;

  // ignore: use_key_in_widget_constructors
  AppCustomButtonWithIcon({
    required this.buttontext,
    required this.buttonDecoration,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
        decoration: buttonDecoration,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon != null
                  ? Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(icon, color: AppColor.cFFFFFF, size: 28),
                  )
                  : SizedBox.shrink(),
              icon != null ? SizedBox(width: 35) : SizedBox.shrink(),
              Text(
                buttontext,
                style: TextFontStyle.headline16w500c2A3256StyleRubik.copyWith(
                  color: AppColor.cFFFFFF,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
