import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/classes/questions.dart';
import 'package:marketapplication/components/custom_text.dart';

class AnswerContainer extends StatefulWidget {
  final Answer answer;
  bool isSelected = false;
  int counter = 0;
  AnswerContainer({required this.answer, required this.counter});

  @override
  State<AnswerContainer> createState() => _AnswerContainerState();
}

class _AnswerContainerState extends State<AnswerContainer> {
  // bool isSelected = false;
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          widget.isSelected = !widget.isSelected;
          if (widget.answer.isCorrect) {
            widget.counter+=1;
            print(widget.counter);
          }

          setState(() {});
        },
        child: Container(
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: this.widget.isSelected ? Colors.green : Colors.white,
          ),
          child: Customtext(
            text: widget.answer.answerText,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
