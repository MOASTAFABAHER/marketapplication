import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/components/custom_container_button.dart';
import 'package:marketapplication/components/custom_text.dart';
import 'package:marketapplication/screens/home_screen.dart';
import 'package:marketapplication/utils/app_navigator.dart';

class CartScreen extends StatelessWidget {
  double totalPrice;
  CartScreen({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'EDEkA',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  color: Colors.grey,
                  height: 35,
                  width: 35,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.grey,
                  height: 35,
                  width: 35,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Material(
          elevation: 6,
          borderRadius: BorderRadiusDirectional.circular(16),
          child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[100]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Customtext(
                  text: 'Thank you for visit ',
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Customtext(
                    text: 'Your Total price is = $totalPrice',
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainerButton(
                      function: () {
                        AppNavigator.appNavigator(
                            context, HomeScreen(totalPrice: totalPrice));
                      },
                      color: Colors.white,
                      text: 'Back',
                      textFontSize: 18,
                      textFontWight: FontWeight.w400,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomContainerButton(
                      function: () {},
                      color: Colors.green,
                      text: "checkout ",
                      textFontSize: 18,
                      textFontWight: FontWeight.w400,
                      textColor: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
