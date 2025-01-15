import 'package:custom_calendar/core/constants/app_colors_cons.dart';
import 'package:custom_calendar/feature/presentation/pages/custom_calendar_page/widgets/app_bar_widget.dart';
import 'package:custom_calendar/feature/presentation/pages/custom_calendar_page/widgets/app_calendar_widget.dart';
import 'package:custom_calendar/feature/presentation/pages/custom_calendar_page/widgets/app_chance_of_widget.dart';
import 'package:custom_calendar/feature/presentation/pages/custom_calendar_page/widgets/app_cycle_info_widget.dart';
import 'package:custom_calendar/feature/presentation/pages/custom_calendar_page/widgets/app_days_of_week.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/dividers.dart';
import '../../../../core/utils/sized_boxs.dart';

class CustomCalendarPage extends StatelessWidget {
  const CustomCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          DaysOfWeekWidget(),
          SizedBoxes.hSizeBox1,
          AppCalendar(),
          SizedBoxes.hSizeBox16,
          CycleInfoWidget(),
          SizedBoxes.hSizeBox16,
          Dividers.tDivider1,
          SizedBoxes.hSizeBox16,
          ChanceOfPWidget()
        ],
      ),
    );
  }
}

