import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/classes/questions.dart';
import 'package:marketapplication/components/answer_container.dart';
import 'package:marketapplication/components/custom_text.dart';

class ContainerQuestion extends StatelessWidget {
  final Question question;
  ContainerQuestion({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.deepOrange),
      child: Column(
        children: [
          Customtext(
            text: question.questionText,
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerContainer(
            counter: 0,
            answer: answerList[0],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          AnswerContainer(
            counter: 0,
            answer: answerList[1],
          ),
          const SizedBox(
            height: 10,
          ),
          AnswerContainer(
            counter: 0,
            answer: answerList[2],
          ),
          const SizedBox(
            height: 10,
          ),
          AnswerContainer(
            counter: 0,
            answer: answerList[3],
          ),
        ],
      ),
    );
  }
}
