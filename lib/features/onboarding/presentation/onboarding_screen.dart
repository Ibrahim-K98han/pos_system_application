import 'package:flutter/material.dart';
import 'package:pos_system/common_widgets/app_custom_button.dart';
import 'package:pos_system/constants/text_font_style.dart';
import 'package:pos_system/features/auth/presentation/create_account_screen.dart';
import 'package:pos_system/features/auth/presentation/login_screen.dart';
import 'package:pos_system/features/onboarding/presentation/widgets/carusal_slider_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Text(
                'ApName',
                style: TextFontStyle.headline32w500c1A72DDStyleRubik,
              ),
              const SizedBox(height: 60),

              ///===================Slider============================///
              CarusalSliderWidget(),
              const SizedBox(height: 32),

              ///======================== Create Account Btn=================///
              AppCustomButton(
                btnName: 'Create a new account',
                isBorder: true,
                height: 55,
                borderRadius: 15,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 18),

              ///======================== Connector Btn=================///
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: const BorderSide(color: Colors.blue),
                ),
                child: const Text(
                  'He is a connector',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
