

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketapplication/screens/home_screen.dart';

import '../screens/bakery_screen.dart';

class IconsData {
  String text;
  String image;
   

  IconsData({required this.text, required this.image});
}

List<IconsData> iconsDataList = [
  IconsData(
      
      text: 'Backery',
      image:
          'https://images.pexels.com/photos/2135/food-france-morning-breakfast.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  IconsData(
      text: 'Fruits',
      image:
          'https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  IconsData(
      text: 'vegetables',
      image:
          'https://images.pexels.com/photos/1435904/pexels-photo-1435904.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  IconsData(
      text: 'Milk',
      image:
          'https://images.pexels.com/photos/5946720/pexels-photo-5946720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  IconsData(
      text: 'Sweets',
      image:
          'https://images.pexels.com/photos/2067396/pexels-photo-2067396.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  IconsData(
      text: 'Cofee',
      image:
          'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
];
