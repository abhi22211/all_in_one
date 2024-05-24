import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 12.0,
    this.fontWeight,
    this.textAlign,
    this.maxLine,
    this.textOverflow,
  });

  final String text;
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
      ),
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }
}
