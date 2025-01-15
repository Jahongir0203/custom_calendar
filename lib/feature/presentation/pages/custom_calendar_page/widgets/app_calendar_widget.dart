import 'package:custom_calendar/core/helpers/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_colors_cons.dart';
import 'icon_generator_widget.dart';

class AppCalendar extends StatelessWidget {
  AppCalendar({
    super.key,
  });

  final DateTime currentMonth = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
      ),
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 35,
      itemBuilder: (context, index) {
        final date = _daysInMonth(currentMonth)[index];
        return Container(
          decoration: BoxDecoration(
            color: ColorHelper.intToColor(index),
            border: Border(
              top: BorderSide(
                  color: AppColors.cEOEOEO, width: index > 7 ? 1.sp : 0.5.sp),
              bottom: BorderSide(
                color: AppColors.cEOEOEO,
                width: index < 28 ? 0.5.sp : 1.sp,
              ),
              right: index % 7 == 6
                  ? BorderSide.none
                  : BorderSide(color: AppColors.cEOEOEO, width: 0.5.sp),
              left: index % 7 == 0
                  ? BorderSide.none
                  : BorderSide(color: AppColors.cEOEOEO, width: 0.5.sp),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: index == 22
                  ? Border.all(color: AppColors.cBlue, width: 3.sp)
                  : null,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${date.day}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: date.month == currentMonth.month
                              ? ColorHelper.intToColor(index) ==
                                      AppColors.cWhite
                                  ? AppColors.c212121
                                  : AppColors.cWhite
                              : AppColors.cBDBDBD),
                    ),
                    Text(
                      '${_numOfIndex(index)[index]}',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color:
                              ColorHelper.intToColor(index) == AppColors.cWhite
                                  ? AppColors.c616161
                                  : AppColors.cWhite),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                  width: 20.sp,
                  child: IconGenerator(
                    index: index,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List<DateTime> _daysInMonth(DateTime month) {
    final firstDayOfMonth = DateTime(month.year, month.month, 1);
    final lastDayOfMonth = DateTime(month.year, month.month + 1, 0);

    final firstDayOfGrid = firstDayOfMonth.subtract(
      Duration(days: firstDayOfMonth.weekday % 7),
    );
    final lastDayOfGrid = lastDayOfMonth.add(
      Duration(days: 6 - (lastDayOfMonth.weekday % 7)),
    );

    return List.generate(
      lastDayOfGrid.difference(firstDayOfGrid).inDays + 1,
      (index) => firstDayOfGrid.add(Duration(days: index)),
    );
  }

  List<int> _numOfIndex(int index) {
    return List.generate(19, (index) => 10 + index) +
        List.generate(16, (index) => 1 + index);
  }
}
