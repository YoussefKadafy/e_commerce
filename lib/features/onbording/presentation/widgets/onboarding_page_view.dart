import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/onbording/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesFruitbasketAmico,
          backgroundImage: Assets.imagesBackground1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبا بك في ',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              ),
              Text(
                'HUB',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffF4A91F),
                ),
              ),
              Text(
                'Fruit',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1B5E37),
                ),
              ),
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \n  مجموعتنا الواسعة من الفواكه الطازجة الممتازة\n     واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPineappleCuate,
          backgroundImage: Assets.imagesBackground2,
          title: Center(
            child: Text(
              'ابحث وتسوق',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
          ),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على\n التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة\n المثالية',
        ),
      ],
    );
  }
}
