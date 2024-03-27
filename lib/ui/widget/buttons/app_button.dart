import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';
import '../../shared/dimens.dart';
import '../../shared/text_styles.dart';

class BusyButton extends StatefulWidget {
  final bool busy;
  final String title;
  final Function onPressed;
  final bool enabled;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color splashColor;
  final double width;
  final double height;
  final double fontSize;

  const BusyButton({
    super.key,
    required this.title,
    this.busy = false,
    required this.onPressed,
    this.width = 130,
    this.height = 50,
    this.fontSize = font_16,
    this.buttonColor = kcButtonColor,
    this.buttonTextColor = kcWhiteColor,
    this.splashColor = kcAccentColor,
    this.enabled = true,
  });

  @override
  _BusyButtonState createState() => _BusyButtonState();
}

class _BusyButtonState extends State<BusyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => widget.onPressed(),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(widget.width, widget.height),
        backgroundColor: widget.buttonColor,
        foregroundColor: Colors.white,
        disabledBackgroundColor: Colors.grey[300],
        textStyle: textStylePoppins(fontSize: widget.fontSize, fontWeight: FontWeight.w600, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // <-- Radius
        ),
      ),
      child: widget.busy
          ? const SizedBox(
              height: 30.0,
              width: 30.0,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(kcAccentColor),
              ),
            )
          : Text(
              widget.title,
              style: textStylePoppins(
                  fontSize: widget.fontSize, fontWeight: FontWeight.w600, color: widget.buttonTextColor),
            ),
    );
  }
}
