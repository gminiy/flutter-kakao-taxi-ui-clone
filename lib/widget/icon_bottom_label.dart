import 'package:flutter/material.dart';

class IconBottomLabel extends StatelessWidget {
  final String image;
  final String label;
  final double iconWidth = 46;
  final double iconHeight = 46;
  final double fontSize = 12;
  final FontWeight fontWeight = FontWeight.w500;
  final Function()? onPressed;

  const IconBottomLabel({
    super.key,
    required this.image,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(10),
        foregroundColor: Colors.black,
        fixedSize: const Size(50, 95),
      ),
      onPressed: onPressed ?? () {},
      child: Column(
        children: [
          Image.asset(
            image,
            width: iconWidth,
            height: iconHeight,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
