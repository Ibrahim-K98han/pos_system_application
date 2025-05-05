import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';

class CarusalSliderWidget extends StatefulWidget {
  const CarusalSliderWidget({super.key});

  @override
  State<CarusalSliderWidget> createState() => _CarusalSliderWidgetState();
}

class _CarusalSliderWidgetState extends State<CarusalSliderWidget> {
  final List<String> imageUrls = [
    'assets/images/first_onboarding.svg',
    'assets/images/first_onboarding.svg',
    'assets/images/first_onboarding.svg',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 280.h,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items:
                imageUrls.map((url) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SvgPicture.asset(url);
                    },
                  );
                }).toList(),
          ),

          Padding(
            padding: EdgeInsets.only(top: 320.h),
            child: Column(
              children: [
                Text(
                  'Easy Management for your Store.',
                  style: TextFontStyle.headline16w500c2A3256StyleRubik,
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imageUrls.length, (index) {
                    return Container(
                      width: 18.w,
                      height: 6.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(4.r),
                          right: Radius.circular(4.r),
                        ),
                        color:
                            currentIndex == index
                                ? AppColor.c1A72DD
                                : Colors.grey.shade400,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
