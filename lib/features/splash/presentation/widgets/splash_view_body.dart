import 'package:e_commerce/consts.dart';
import 'package:e_commerce/core/services/shared_preferences_singltone.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/onbording/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(Assets.imagesBranch)],
        ),
        SvgPicture.asset(Assets.imagesSplashLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(Duration(seconds: 2), () {
      bool isOnBoardingSeen = Prefs.getBool(kIsOnBoardingKey) ?? false;
      if (isOnBoardingSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routName);
      } else {
        Navigator.pushReplacementNamed(context, OnboardingView.routName);
      }
    });
  }
}
