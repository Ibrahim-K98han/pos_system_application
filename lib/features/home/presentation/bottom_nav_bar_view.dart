import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/features/home/presentation/home_screen.dart';
import 'package:pos_system/features/home_after_login/presentation/home_after_login_screen.dart';
import 'package:pos_system/features/home_manual/presentation/home_manual_screen.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HomeAfterLoginScreen(),
    HomeManualScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColor.cFFFFFF,
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: SvgPicture.asset(
                    _selectedIndex == 0
                        ? 'assets/images/home_blu.svg'
                        : 'assets/images/home_grey.svg',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: SvgPicture.asset(
                    _selectedIndex == 1
                        ? 'assets/images/home_after_login_blu.svg'
                        : 'assets/images/home_after_login_grey.svg',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: SvgPicture.asset(
                    _selectedIndex == 2
                        ? 'assets/images/manual_blue.svg'
                        : 'assets/images/manual_grey.svg',
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
