import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';

class ContainerOfLevels extends StatelessWidget {
  Function()? onPressed;
  String text;
  Color? color;
  ContainerOfLevels({this.onPressed, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Customtext(
            text: text,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
