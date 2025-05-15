import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pos_system/common_widgets/common_app_bar.dart';
import 'package:pos_system/constants/app_color.dart';

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
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(color: AppColor.cFFFFFF),
                  child: Icon(Icons.search, size: 46.sp),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(color: AppColor.cFFFFFF),
                  child: Icon(Icons.barcode_reader, size: 46.sp),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(color: AppColor.cFFFFFF),
                  child: Icon(Icons.menu, size: 46.sp),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(10.r),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: 50,
              itemBuilder: (context, index) {
                return Container(
                  height: 185.h,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    
                    children: [
                      Image.asset('assets/images/salad_tune.png'),
                      Text('Salad Tuna'),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
