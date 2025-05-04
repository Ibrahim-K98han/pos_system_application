import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
              height: 280,
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
            padding: EdgeInsets.only(top: 320),
            child: Column(
              children: [
                Text(
                  'Easy Management for your Store.',
                  style: TextFontStyle.headline16w500c2A3256StyleRubik,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imageUrls.length, (index) {
                    return Container(
                      width: 18,
                      height: 6,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(4),
                          right: Radius.circular(4),
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
