import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_colors_cons.dart';
import '../../../../../core/constants/app_locale_keys_cons.dart';

class DaysOfWeekWidget extends StatelessWidget {
  const DaysOfWeekWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h, top: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppLocaleKeys.sun,
          AppLocaleKeys.mon,
          AppLocaleKeys.tue,
          AppLocaleKeys.wed,
          AppLocaleKeys.thu,
          AppLocaleKeys.fri,
          AppLocaleKeys.sat
        ]
            .map(
              (day) => Expanded(
                child: Center(
                  child: Text(
                    day,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.c616161,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
