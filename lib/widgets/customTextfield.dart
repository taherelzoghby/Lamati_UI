import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';
import 'textField.dart';

class customTextField extends StatelessWidget {
  const customTextField({
    super.key,
    required this.label,
    required this.onSubmit,
    required this.onChange,
    this.backField = AppConsts.emptyFilledColor,
    this.readOnly = false,
    this.icon,
    this.onTap,
    this.maxLines = 1,
  });

  final String label;

  final void Function(String) onSubmit;
  final void Function(String) onChange;
  final Color backField;
  final bool readOnly;
  final Widget? icon;
  final void Function()? onTap;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: AppConsts.textLabelField,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(20.sp),
          onTap: onTap,
          child: textField(
            onSubmit: onSubmit,
            onChange: onChange,
            maxLength: 100,
            backField: backField,
            readOnly: readOnly,
            icon: icon,
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }
}
