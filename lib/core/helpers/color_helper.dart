import 'dart:ui';

import 'package:custom_calendar/core/constants/app_colors_cons.dart';

class ColorHelper {
  ColorHelper._();

  static Color intToColor(int index) {
    if (18 < index && index < 23) {
      return AppColors.cFF699C;
    }

    if (index == 30) {
      return AppColors.cFF981F;
    }
    return AppColors.cWhite;
  }
}
