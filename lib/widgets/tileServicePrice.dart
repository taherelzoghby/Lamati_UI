
import 'package:flutter/material.dart';

class tileServicePrice extends StatelessWidget {
  final String value;
  final String kkey;
  final TextStyle style;

  const tileServicePrice({
    super.key,
    required this.value,
    required this.kkey,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(value, style: style),
        Text(kkey, style: style),
      ],
    );
  }
}
