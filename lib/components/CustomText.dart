import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontSize = 25;
  FontWeight fontWeight = FontWeight.normal;
  bool softWrap = false;
  TextAlign textAlign;
  int maxLines;
  TextOverflow overflow;
  String keyName = "";

  CustomText(this.text,
      {this.keyName,
        this.fontSize,
      this.fontWeight,
      this.softWrap,
      this.textAlign,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext ctx) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white, fontSize: fontSize, fontWeight: fontWeight),
      softWrap: softWrap,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      key: Key(keyName),
    );
  }
}
