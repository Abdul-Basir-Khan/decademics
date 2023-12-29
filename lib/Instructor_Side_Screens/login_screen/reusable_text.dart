import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;

  const ReusableText({
    Key? key,
    required this.title,
    this.size,
    this.weight,
    this.color,
    this.align,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,

      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
