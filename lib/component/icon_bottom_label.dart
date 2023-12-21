import 'package:flutter/material.dart';

class IconBottomLabel extends StatelessWidget {
  final String image;
  final String label;
  final double iconWidth;
  final double iconHeight;
  final double fontSize;
  final FontWeight fontWeight;
  final Function()? onPressed;

  const IconBottomLabel({
    super.key,
    required this.image,
    required this.label,
    this.onPressed,
    this.iconWidth = 50,
    this.iconHeight = 50,
    this.fontSize = 13,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed ?? () {},
          icon: Image.asset(
            image,
            width: iconWidth,
            height: iconHeight,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
