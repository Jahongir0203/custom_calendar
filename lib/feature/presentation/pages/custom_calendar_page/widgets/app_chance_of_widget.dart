import 'package:custom_calendar/core/constants/app_colors_cons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_locale_keys_cons.dart';

class ChanceOfPWidget extends StatelessWidget {
  const ChanceOfPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            decoration: BoxDecoration(
              color: AppColors.cFF981F,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Text(
              AppLocaleKeys.medium,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.cWhite),
            ),
          ),
          Text(
            ' - ${AppLocaleKeys.chanceOfPregnant}',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.c424242),
          )
        ],
      ),
    );
  }
}
