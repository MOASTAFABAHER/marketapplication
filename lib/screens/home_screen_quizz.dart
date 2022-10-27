import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_text.dart';
import 'package:marketapplication/screens/quiz_wellcome_screen.dart';

import '../components/container_of_levels.dart';
import 'level_one_screen.dart';

class HomeScreenQuizz extends StatelessWidget {
  const HomeScreenQuizz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: Customtext(
          text: 'Levels',
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
      backgroundColor: Colors.white,
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ContainerOfLevels(
            color: Colors.deepOrange,
            text: 'levelOne',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => LevelOneScreen())));
            },
          ),
          ContainerOfLevels(
            color: Colors.grey,
            text: 'LevelTwo',
            onPressed: () {},
          ),
          ContainerOfLevels(
            color: Colors.pink,
            text: 'LevelThree',
            onPressed: () {},
          ),
          ContainerOfLevels(
            color: Colors.yellow,
            text: 'LevelFour',
            onPressed: () {},
          ),
          ContainerOfLevels(
            color: Colors.deepOrange,
            text: 'LevelFive',
            onPressed: () {},
          ),
          ContainerOfLevels(
            color: Colors.grey,
            text: 'LevelSix',
            onPressed: () {},
          ),
          ContainerOfLevels(
            color: Colors.pink,
            text: 'levelSeven',
            onPressed: () {},
          ),
          ContainerOfLevels(
            color: Colors.yellow,
            text: 'levelEight',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
