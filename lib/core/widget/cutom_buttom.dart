import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroundColor,
    required this.textcolor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final Color backgroundColor;
  final Color textcolor;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          child: Text(
            text,
            style: Style.textstyle18.copyWith(
              fontSize: fontSize,
              color: textcolor,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
