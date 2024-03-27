import 'package:flutter/material.dart';

import 'app_colors.dart';

defaultAppbar({required Function onBackPressed, String? title,List<Widget>? action}) {
  return AppBar(
    backgroundColor: kcAppBarColor,
    elevation: 1,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.grey,
      ),
      onPressed: () => onBackPressed(),
    ),
    actions: action??[],
  );
}
