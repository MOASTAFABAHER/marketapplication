import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/classes/icons_data.dart';
import 'package:marketapplication/classes/market_data.dart';
import 'package:marketapplication/components/custom_text.dart';
import 'package:marketapplication/components/submit_button.dart';
import 'package:marketapplication/screens/fruits_screen.dart';
import 'package:marketapplication/screens/home_screen.dart';
import 'package:marketapplication/utils/app_navigator.dart';
import 'package:marketapplication/screens/cart_screen.dart';

import '../components/custom_container_market.dart';
import '../components/custom_icon_button.dart';
import '../components/custom_textform.dart';

class VegetablesScreen extends StatefulWidget {
  double totalPrice;
  VegetablesScreen({required this.totalPrice, super.key});

  @override
  State<VegetablesScreen> createState() => _VegetablesScreen();
}

class _VegetablesScreen extends State<VegetablesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, true);
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const CustomTextFormField(),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(right: 12, bottom: 8),
                  width: 30,
                  height: 30,
                  color: Colors.grey,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: marketVegiablesDataList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.65, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ContainerMarket(
                          function: () {
                            setState(() {
                              widget.totalPrice = widget.totalPrice +
                                  marketVegiablesDataList[index].price;
                              marketVegiablesDataList[index].counter++;

                              print(widget.totalPrice);
                            });
                          },
                          marketData: marketVegiablesDataList[index],
                        ),
                        Customtext(
                          text:
                              'the numbers of items ${marketVegiablesDataList[index].counter}',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  }),
            ),
            SubmitButton(function: () {
              AppNavigator.appNavigator(
                  context, CartScreen(totalPrice: widget.totalPrice));
            }),
          ],
        ),
      ),
    );
  }
}
