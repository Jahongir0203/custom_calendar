import 'package:custom_calendar/core/constants/app_colors_cons.dart';
import 'package:custom_calendar/core/constants/app_locale_keys_cons.dart';
import 'package:custom_calendar/core/utils/sized_boxs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_svg_cons.dart';

class CycleInfoWidget extends StatelessWidget {
  const CycleInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocaleKeys.august27,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.c212121),
              ),
              Text(
                AppLocaleKeys.cycleDay12,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.c616161),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            splashColor: AppColors.c616161,
            borderRadius: BorderRadius.circular(1000.r),
            child: Ink(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
              decoration: BoxDecoration(
                color: AppColors.cWhite,
                border: Border.all(color: AppColors.cEOEOEO),
                borderRadius: BorderRadius.circular(1000.r),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppSvg.icBlood,
                    height: 16.sp,
                    width: 16.sp,
                  ),
                  SizedBoxes.wSizeBox8,
                  Text(
                    AppLocaleKeys.edit,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.c212121),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
