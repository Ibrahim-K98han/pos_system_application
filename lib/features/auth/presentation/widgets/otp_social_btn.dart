import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class OtpSocialBtn extends StatefulWidget {
  const OtpSocialBtn({super.key});

  @override
  State<OtpSocialBtn> createState() => _OtpSocialBtnState();
}

class _OtpSocialBtnState extends State<OtpSocialBtn> {
  int selectedIndex = 0;

  List<String> buttonLabels = ['Email', 'WhatsApp', 'SMS', 'Missed call'];
  final List<String> imageUrls = [
    'assets/images/email.svg',
    'assets/images/whatsapp.svg',
    'assets/images/sms.svg',
    'assets/images/phone.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: List.generate(4, (index) {
        bool isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding:  EdgeInsets.only(top: 12.h),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              height: 45.h,
              width: 140.w,
              decoration: BoxDecoration(
                color: isSelected ? AppColor.c1A72DD : AppColor.cF2F2F2,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    imageUrls[index],
                    width: 18.w,
                    height: 18.h,
                    color: isSelected ? AppColor.cFFFFFF : AppColor.c2A3256,
                  ),
                  Text(
                    buttonLabels[index],
                    style: TextFontStyle.headline12w400c8E92A4StyleRubik
                        .copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              isSelected ? AppColor.cFFFFFF : AppColor.c2A3256,
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
