import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';

class SubmitButton extends StatelessWidget {
  var function;
  SubmitButton({required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container( 
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.green,
          ),
          width: double.infinity,
          child: Center(
            child: Customtext(
              text: 'Submit',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
