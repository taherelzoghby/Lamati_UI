import 'package:flutter/material.dart';
import '../consts/style.dart';

class haveAccount extends StatelessWidget {
  const haveAccount({
    super.key,
    required this.label,
    required this.labelButton,
    required this.onTap,
  });

  final String label;
  final String labelButton;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            labelButton,
            style: AppConsts.bodyTextStyle,
          ),
        ),
        Text(
          label,
          style: AppConsts.textLabelField,
        ),
      ],
    );
  }
}
