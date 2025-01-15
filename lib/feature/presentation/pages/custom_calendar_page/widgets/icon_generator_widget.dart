import 'package:custom_calendar/core/constants/app_svg_cons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/sized_boxs.dart';

class IconGenerator extends StatelessWidget {
  const IconGenerator({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    if (index < 7 || index > 27) {
      if (index == 5 || index == 33) {
        return SvgPicture.asset(AppSvg.icCircle);
      } else {
        return SvgPicture.asset(AppSvg.icLeaf);
      }
    }

    if (18 < index && index < 23) {
      return SvgPicture.asset(AppSvg.icBlood);
    }

    return SizedBoxes.sizeBoxShrink;
  }
}
