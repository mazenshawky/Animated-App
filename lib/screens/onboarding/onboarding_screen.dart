import 'dart:ui';

import 'package:animated_app/core/utils/app_assets.dart';
import 'package:animated_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../components/animated_button.dart';
import '../components/custom_sign_in_dialog.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late RiveAnimationController _buttonAnimationController;
  bool isSignInDialogShown = false;

  @override
  void initState() {
    super.initState();
    _buttonAnimationController = OneShotAnimation("active", autoplay: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: context.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset(BackgroundAssets.background),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset(RiveAssets.shapes),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          AnimatedPositioned(
            top: isSignInDialogShown ? -50 : 0,
            duration: const Duration(milliseconds: 240),
            height: context.height,
            width: context.width,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        children: const [
                          Text(
                            'Learn desgin & code',
                            style: TextStyle(
                              fontSize: 60,
                              fontFamily: 'Poppins',
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                              "Don't skip design. Learn design and code, by building real apps with Flutter and Swift. Complete courses about the best tools."),
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
                    AnimatedButton(
                      buttonAnimationController: _buttonAnimationController,
                      press: () {
                        _buttonAnimationController.isActive = true;
                        Future.delayed(const Duration(milliseconds: 800), () {
                          setState(() {
                            isSignInDialogShown = true;
                          });
                          customSignInDialog(
                            context,
                            onClosed: (_) => setState(() {
                              isSignInDialogShown = false;
                            }),
                          );
                        });
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                          "Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files and certificates."),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
