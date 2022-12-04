import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Customtext extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  int? maxLine;

  Customtext(
      {required this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      maxLines: this.maxLine,
      style: TextStyle(
        fontFamily: 'Barlow Condensed',
        fontSize: this.fontSize,
        fontWeight: this.fontWeight,
        color: color,
      ),
    );
  }
}
