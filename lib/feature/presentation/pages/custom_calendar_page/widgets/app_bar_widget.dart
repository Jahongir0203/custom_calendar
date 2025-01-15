import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors_cons.dart';
import '../../../../../core/constants/app_svg_cons.dart';
import '../../../../../core/helpers/date_helpers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.cWhite,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppSvg.icLeading),
        ),
        title: Text(
          DateHelper.monthToString(DateTime.now().month,),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.c212121
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppSvg.icCalendar),
          ),
        ],
      ),
    );
  }
}
