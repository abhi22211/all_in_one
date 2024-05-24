import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 18.0,
    this.fontWeight,
    this.textAlign,
    this.maxLine,
    this.textOverflow,
    this.fontString,
  });

  final String text;
  final String? fontString;
  final Color color;
  final double size;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLine;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontString,
      ),
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }
}
