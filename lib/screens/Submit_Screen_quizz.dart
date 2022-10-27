import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';

class SubmitScreenQuiz extends StatelessWidget {
  int score = 0;
  SubmitScreenQuiz({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
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
          text: 'Submit Screen',
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
      body: Center(
        child: Customtext(
          text: 'na hna msh 3arf a pass el cunter el f answer_container',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
