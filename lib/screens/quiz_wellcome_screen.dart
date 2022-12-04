import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/Custom_Container_button.dart';
import 'package:marketapplication/screens/home_screen_quizz.dart';

import '../components/custom_text.dart';

class QuizWellcomeScreen extends StatelessWidget {
  const QuizWellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
              'https://images.pexels.com/photos/7092451/pexels-photo-7092451.jpeg?auto=compress&cs=tinysrgb&w=1600',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtext(
                text: 'Quizzlez',
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 30,
              ),
              Customtext(
                text: 'Lest\'s play! ',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              Customtext(
                text: 'Play now and level up ',
                fontSize: 18,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainerButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => HomeScreenQuizz())));
                },
                text: 'Play now',
                width: double.infinity,
                color: Colors.purpleAccent,
                hight: 45,
                colorText: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainerButton(
                text: 'About',
                width: double.infinity,
                color: Colors.blueGrey,
                hight: 45,
                colorText: Colors.white,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
