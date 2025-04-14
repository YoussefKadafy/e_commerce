import 'package:e_commerce/core/extensions/size_extension.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/auth/presentation/widgets/divider_section.dart';
import 'package:e_commerce/features/auth/presentation/widgets/dont_have_account_widget.dart';
import 'package:e_commerce/features/auth/presentation/widgets/social_auth_section.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            8.ph,
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            16.ph,
            CustomTextFormField(
              hintText: 'كلمة المرور',
              obscureText: obscureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon:
                    obscureText
                        ? Icon(
                          Icons.visibility_rounded,
                          color: AppColors.shadeGray,
                        )
                        : Icon(Icons.visibility_off_rounded),
                color: Color(0xffC9CECF),
              ),
            ),
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyle(
                      color: AppColors.appPrimaryColorLight,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            33.ph,
            CustomButton(text: 'تسجيل الدخول', onPressed: () {}),
            33.ph,
            DontHaveAccountWidget(),
            49.ph,
            DividerSection(),
            31.ph,
            SocialAuthSection(),
            66.ph,
          ],
        ),
      ),
    );
  }
}
