import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';
import '../../shared/text_styles.dart';

class ProfileTextFieldWidget extends StatelessWidget {
  ProfileTextFieldWidget({
    super.key,
    this.hint,
    this.inputAction,
    this.inputType = TextInputType.number,
    this.error,
    this.obscureText = false,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.textAlign = TextAlign.center,
    this.onChanged,
    this.maxLength = 50,
    this.suffixIconColor = Colors.black,
    this.controller,
    this.onTapSuffixIcon,
  });

  final Function(String)? onChanged;
  final Function? onTapSuffixIcon;
  final String? hint;
  final TextInputAction? inputAction;
  final TextInputType inputType;
  final String? error;
  final bool obscureText;
  final bool enabled;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextAlign textAlign;
  final int maxLength;
  final TextEditingController? controller;
  final Color suffixIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        textAlign: textAlign,
        textInputAction: inputAction,
        style: const TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),
        onChanged: onChanged,
        obscureText: obscureText,
        maxLength: maxLength,
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  size: 18.0,
                  color: Colors.black,
                )
              : null,
          suffixIcon: suffixIcon != null
              ? InkWell(
                  child: Icon(
                    suffixIcon,
                    size: 18.0,
                    color: suffixIconColor,
                  ),
                  onTap: () {
                    if (onTapSuffixIcon != null) {
                      onTapSuffixIcon!();
                    }
                  },
                )
              : null,
          contentPadding: const EdgeInsets.all(12.0),
          border: BorderStyles.auctionTextFieldBorderStyle,
          enabledBorder: BorderStyles.auctionTextFieldBorderStyle,
          disabledBorder: BorderStyles.auctionTextFieldBorderStyle,
          focusedBorder: BorderStyles.auctionTextFieldBorderStyle,
          errorText: error,
          errorMaxLines: 3,
          errorBorder: BorderStyles.errorBorder,
          errorStyle: textStylePoppins(color: Colors.red),
          hintStyle: textStylePoppins(color: Colors.grey),
          filled: true,
          enabled: enabled,
          hintText: hint,
          counterText: "",
          fillColor: kcTextFieldColor,
        ),
      ),
    );
  }
}

class BorderStyles {
  BorderStyles();

  static const OutlineInputBorder textFieldBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
    borderSide: BorderSide(
      color: kcButtonColor,
      width: 0.0,
    ),
  );

  static const OutlineInputBorder auctionTextFieldBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
    borderSide: BorderSide(
      color: kcButtonColor,
      width: 0.0,
    ),
  );

  static const OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
    borderSide: BorderSide(
      color: Colors.red,
      width: 0.5,
    ),
  );
}
