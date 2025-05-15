import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_system/common_widgets/common_app_bar.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/home/presentation/widgets/product_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedValue = 'All products';

  List<String> items = ['All products', 'Banana', 'Mango', 'Orange'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cF0F2F6,
      appBar: commonAppBar('Cashier'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(color: AppColor.cFFFFFF),
                    child: DropdownButton<String>(
                      value: selectedValue,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: TextStyle(color: Colors.black, fontSize: 18),

                      underline: SizedBox(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextFontStyle
                                    .headline16w500c2A3256StyleRubik
                                    .copyWith(
                                      color: AppColor.c2A3256,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.all(18.r),
                  decoration: BoxDecoration(color: AppColor.cFFFFFF),
                  child: SvgPicture.asset(
                    'assets/images/Search.svg',
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.all(18.r),
                  decoration: BoxDecoration(color: AppColor.cFFFFFF),
                  child: SvgPicture.asset(
                    'assets/images/bar-code.svg',
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.all(18.r),
                  decoration: BoxDecoration(color: AppColor.cFFFFFF),
                  child: SvgPicture.asset(
                    'assets/images/List.svg',
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),

            ///================== Product Gride View================///
            GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(16.r),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: .8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductWidgets(showLevel: true);
              },
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.c1A72DD,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/Cart.svg'),
                            SizedBox(width: 8.w),
                            Text(
                              '8 elements',
                              style: TextFontStyle
                                  .headline16w500c2A3256StyleRubik
                                  .copyWith(color: AppColor.cFFFFFF),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Total: GNF 200.00',
                        style: TextFontStyle.headline16w500c2A3256StyleRubik
                            .copyWith(color: AppColor.cFFFFFF),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
