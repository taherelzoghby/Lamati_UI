import 'package:flutter/material.dart';
import '../consts/style.dart';

import '../consts/strings.dart';

class textField extends StatelessWidget {
  const textField(
      {super.key,
      required this.onSubmit,
      required this.onChange,
      required this.maxLength,
      this.backField = AppConsts.emptyFilledColor,
      this.readOnly = false,
      this.icon,
      this.maxLines = 1});

  final void Function(String p1) onSubmit;
  final void Function(String p1) onChange;
  final int maxLength;
  final Color backField;
  final bool readOnly;
  final Widget? icon;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      onSubmitted: onSubmit,
      onChanged: onChange,
      readOnly: readOnly,
      maxLines: maxLines,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        suffixIcon: icon,
        counterText: Strings.emptyString,
        fillColor: backField,
        filled: true,
        enabledBorder: AppConsts.inputBorder,
        focusedBorder: AppConsts.inputBorder,
        errorBorder: AppConsts.inputBorder,
        disabledBorder: AppConsts.inputBorder,
      ),
    );
  }
}
