import 'package:e_commerce/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            ' أو ',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
        Expanded(child: CustomDivider()),
      ],
    );
  }
}
