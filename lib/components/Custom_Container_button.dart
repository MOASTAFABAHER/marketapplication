import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';

class CustomContainerButton extends StatelessWidget {
  double? width;
  double? hight;
  Color? color;
  Color? colorText;
  String text;
  CustomContainerButton(
      {required this.text, this.width, this.hight, this.color, this.colorText});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            fontSize: 20,
            color: colorText,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
