import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/classes/questions.dart';
import 'package:marketapplication/components/Custom_Container_button.dart';
import 'package:marketapplication/components/container_question.dart';
import 'package:marketapplication/components/custom_text.dart';
import 'package:marketapplication/screens/Submit_Screen_quizz.dart';

class LevelOneScreen extends StatelessWidget {
  const LevelOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.green,
        ),
        centerTitle: true,
        title: Customtext(
          text: 'LevelOne',
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ContainerQuestion(
                question: Question(
              'Answer is C',
            )),
          ),
          CustomContainerButton(
            text: 'Submit',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SubmitScreenQuiz(score: 1,)));
            },
          )
        ],
      ),
    );
  }
}
