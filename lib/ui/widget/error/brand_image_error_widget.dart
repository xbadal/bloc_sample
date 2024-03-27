import 'package:flutter/material.dart';
class BrandImageErrorWidget extends StatelessWidget {
  const BrandImageErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/slider_dummy.jpg',
      height: 70,
      width: 70,
      fit: BoxFit.cover,
    );
  }
}
