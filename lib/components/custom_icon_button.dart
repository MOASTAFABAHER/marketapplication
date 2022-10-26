import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:marketapplication/classes/icons_data.dart';

import '../screens/bakery_screen.dart';

class CustomIconButton extends StatelessWidget {
  final IconsData iconsData;
  Function()? onTap;
  CustomIconButton({required this.iconsData, this.onTap});

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:onTap,
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(iconsData.image)),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          iconsData.text,
          style: TextStyle(color: Colors.grey[500], fontSize: 14),
        )
      ],
    );
  }
}
