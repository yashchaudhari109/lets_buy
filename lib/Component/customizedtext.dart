import 'package:flutter/material.dart';

class CustomizedText extends StatelessWidget {
  const CustomizedText(
      {Key? key,
      this.text,
      this.onTap,
      this.color,
      this.fontsize,
      this.fontweight})
      : super(key: key);
  final text;
  final onTap;
  final color;
  final fontsize;
  final fontweight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Text(
          "${text}",
          style: TextStyle(
              color: color != null ? color : Colors.white,
              fontSize: fontsize != null ? fontsize : 14,
              fontWeight: fontweight != null ? fontweight : FontWeight.normal
              // fontSize: fontsize!,
              ),
        ));
  }
}
