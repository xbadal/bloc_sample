import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'dimens.dart';

TextStyle textStylePoppins({
  Color? color= kcBlackColor,
  double fontSize = font_12,
  fontWeight = FontWeight.w500,
  TextDecoration decoration = TextDecoration.none,
}) {
  return TextStyle(
      fontWeight: fontWeight,
      letterSpacing: 0.5,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      color: color,
      decoration: decoration);
}
