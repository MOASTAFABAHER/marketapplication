import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';

class CustomContainerButton extends StatelessWidget {
  double? width;
  double? hight;
  Color? color;
  double? textFontSize;
  Color? textColor;
  var textFontWight;
  String text;
  var function;
  CustomContainerButton(
      {required this.text,
      this.textFontSize,
      this.textFontWight,
      this.width,
      this.hight,
      this.color,
      this.textColor,
      this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: this.width,
        height: this.hight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Align(
            alignment: Alignment.center,
            child: Customtext(
              text: text,
              fontSize: textFontSize,
              color: textColor,
              fontWeight: textFontWight,
            )),
      ),
    );
  }
}
