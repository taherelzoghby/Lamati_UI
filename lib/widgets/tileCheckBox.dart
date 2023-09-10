import 'package:flutter/material.dart';

import '../consts/style.dart';

class checkBox extends StatelessWidget {
  const checkBox({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(title, style: AppConsts.subTitleTextStyle),
        Checkbox(
          value: value,
          onChanged: onChanged,
          fillColor: MaterialStateProperty.all(AppConsts.mainColor),
        ),
      ],
    );
  }
}
