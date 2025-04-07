import 'package:e_commerce/features/onbording/presentation/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const String routName = 'onbording';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnBoardingViewBody());
  }
}
