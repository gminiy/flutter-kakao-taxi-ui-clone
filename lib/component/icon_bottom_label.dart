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
    this.iconWidth = 46,
    this.iconHeight = 46,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(10),
        foregroundColor: Colors.black,
      ),
      onPressed: onPressed ?? () {},
      child: Column(
        children: [
          Image.asset(
            image,
            width: iconWidth,
            height: iconHeight,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
