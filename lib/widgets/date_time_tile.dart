
import 'package:flutter/material.dart';

class dateTimeItem extends StatelessWidget {
  const dateTimeItem({
    super.key,
    required this.time,
    required this.date,
  });

  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Text(time),
            const Icon(Icons.timer),
          ],
        ),
        Row(
          children: [
            Text(date),
            const Icon(Icons.calendar_month),
          ],
        ),
      ],
    );
  }
}
