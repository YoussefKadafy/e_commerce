import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/onbording/presentation/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

late PageController pageController;
var currentPage = 0;

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();

      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          reversed: true,
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.appPrimaryColor,
            color:
                currentPage == 1
                    ? AppColors.appPrimaryColor
                    : AppColors.appPrimaryColor.withOpacity(.6),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(text: 'ابدأ الأن'),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
