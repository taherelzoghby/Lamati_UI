import 'package:flutter/material.dart';
import '../consts/strings.dart';

import '../consts/style.dart';

class totalPriceItem extends StatelessWidget {
  const totalPriceItem({
    super.key,
    required this.totalPrice,
  });

  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          totalPrice,
          style: AppConsts.bodyRed,
        ),
        Text(
          Strings.total,
          style: AppConsts.bodyRed,
        ),
      ],
    );
  }
}
