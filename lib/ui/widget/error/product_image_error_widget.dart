import 'package:flutter/material.dart';
class ProductImageErrorWidget extends StatelessWidget {
  const ProductImageErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/product_sample.png',
      height: 70,
      width: 70,
      fit: BoxFit.cover,
    );
  }
}
