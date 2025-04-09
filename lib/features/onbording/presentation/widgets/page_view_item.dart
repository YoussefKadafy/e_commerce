import 'package:e_commerce/consts.dart';
import 'package:e_commerce/core/services/shared_preferences_singltone.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });
  final String image, backgroundImage;
  final Widget title;
  final String subTitle;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,

          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              SafeArea(
                child: Visibility(
                  visible: isVisible,
                  child: TextButton(
                    onPressed: () {
                      Prefs.setBool(kIsOnBoardingKey, true);
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginView.routName);
                    },
                    child: Text(
                      'تخط',
                      style: TextStyle(
                        color: Color(0xff949D9E),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 47.5),
        title,
        SizedBox(height: 24),
        SizedBox(
          width: MediaQuery.of(context).size.width * 3,
          child: Center(
            child: Text(
              subTitle,
              maxLines: 3,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
