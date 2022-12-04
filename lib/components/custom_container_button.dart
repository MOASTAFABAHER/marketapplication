import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';

class CustomContainerButton extends StatelessWidget {
  var function;
  var color;
  var text;
  var textColor;
  double? textFontSize;
  var textFontWight;
  CustomContainerButton(
      {required this.function,
      required this.color,
      required this.text,
      this.textColor,
      this.textFontSize,
      this.textFontWight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Material(
        elevation: 10,
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Center(
            child: Customtext(
              text: text,
              fontSize: textFontSize,
              color: textColor,
              fontWeight: textFontWight,
            ),
          ),
        ),
      ),
    );
  }
}
