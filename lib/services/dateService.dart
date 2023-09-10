import 'package:flutter/material.dart';

class DateTimeService{

///date
  static selectDateFunc(context) async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      builder: (context, widget) => Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light().copyWith(
              primary: Colors.green,
            ),
          ),
          child: widget!),
    ).then((value) {
      if (value == null) {
        return;
      } else {
       // setState(() => _selectedDate = value);
      }
    });
  }

///time
 static  selectTimeFunc(context) async {
    await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, widget) => Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light().copyWith(
              primary: Colors.green,
            ),
          ),
          child: widget!),
    ).then((value) {
      if (value == null) {
        return;
      } else {
        //setState(() => _selectedTime = value);
      }
    });
  }

}
