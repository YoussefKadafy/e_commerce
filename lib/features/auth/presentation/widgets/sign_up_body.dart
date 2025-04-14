import 'package:e_commerce/core/extensions/size_extension.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/auth/presentation/widgets/terms_and_conditions_section.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool obscureText = true;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            8.ph,
            CustomTextFormField(
              hintText: 'الاسم الكامل',
              keyboardType: TextInputType.name,
            ),
            16.ph,
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
            TermsAndConditionsSection(),
            16.ph,
            CustomButton(text: 'إنشاء حساب جديد', onPressed: () {}),
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' لديك حساب بالفعل؟',

                  style: TextStyle(
                    color: AppColors.shadeBlueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginView.routName);
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: AppColors.appPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
