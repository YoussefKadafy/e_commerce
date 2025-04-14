import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟',
          style: TextStyle(
            color: AppColors.shadeBlueGrey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpView.routeName);
          },
          child: Text(
            'قم بإنشاء حساب',
            style: TextStyle(
              color: AppColors.appPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
