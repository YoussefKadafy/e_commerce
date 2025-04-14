import 'package:e_commerce/core/extensions/size_extension.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsSection extends StatefulWidget {
  const TermsAndConditionsSection({super.key});

  @override
  State<TermsAndConditionsSection> createState() =>
      _TermsAndConditionsSectionState();
}

class _TermsAndConditionsSectionState extends State<TermsAndConditionsSection> {
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isAccepted = !isAccepted;
                });
              },
              child: AnimatedContainer(
                height: 24,
                width: 24,
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        isAccepted
                            ? AppColors.appPrimaryColor
                            : AppColors.shadeGray,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: isAccepted ? AppColors.appPrimaryColor : Colors.white,
                ),
                child:
                    isAccepted
                        ? Icon(Icons.check, color: Colors.white, size: 16)
                        : null,
              ),
            ),
            16.ph,
          ],
        ),
        16.pw,
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyle(
                    color: AppColors.shadeBlueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyle(
                    color: AppColors.appPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  // Add gesture recognizer if needed for navigation
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
