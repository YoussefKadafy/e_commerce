import 'package:e_commerce/core/extensions/size_extension.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/widgets/custom_social_auth_button.dart';
import 'package:flutter/material.dart';

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSocialAuthButton(
          image: Assets.imagesGoogle,
          title: 'تسجيل بواسطة جوجل',
        ),
        16.ph,
        CustomSocialAuthButton(
          image: Assets.imagesApple,
          title: 'تسجيل بواسطة أبل',
        ),
        16.ph,
        CustomSocialAuthButton(
          image: Assets.imagesFacebook,
          title: 'تسجيل بواسطة فيسبوك',
        ),
      ],
    );
  }
}
