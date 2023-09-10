import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';

class customDropDownButton extends StatelessWidget {
  const customDropDownButton({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    required this.newValueDrop,
  });

  final String label;
  final List<String> items;
  final void Function(String?) onChanged;
  final String newValueDrop;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ///label
        Text(
          label,
          style: AppConsts.textLabelField,
        ),

        /// drop down button
        Container(
          height: height * .07.h,
          width: width * .9.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            border: Border.all(
              color: AppConsts.inputBorderColor,
              width: 2.w,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0.sp),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: const SizedBox(),
              items: items.isEmpty
                  ? []
                  : items.map<DropdownMenuItem<String>>(
                      (String e) {
                        return DropdownMenuItem<String>(
                          value: e.toString(),
                          child: Text(e.toString()),
                        );
                      },
                    ).toList(),
              onChanged: onChanged,
              value: newValueDrop,
            ),
          ),
        ),
      ],
    );
  }
}
