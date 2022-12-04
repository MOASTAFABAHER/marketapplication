import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/classes/icons_data.dart';
import 'package:marketapplication/classes/market_data.dart';
import 'package:marketapplication/components/custom_text.dart';
import 'package:marketapplication/components/submit_button.dart';
import 'package:marketapplication/screens/fruits_screen.dart';
import 'package:marketapplication/screens/home_screen.dart';
import 'package:marketapplication/screens/submit_screen.dart';
import 'package:marketapplication/utils/app_navigator.dart';

import '../components/custom_container_market.dart';
import '../components/custom_icon_button.dart';
import '../components/custom_textform.dart';

class BackeryScreen extends StatefulWidget {
  double totalPrice;
  BackeryScreen({required this.totalPrice, super.key});

  @override
  State<BackeryScreen> createState() => _BackeryScreenState();
}

class _BackeryScreenState extends State<BackeryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            AppNavigator.appNavigator(
                context,
                HomeScreen(
                  totalPrice: widget.totalPrice,
                ),
                isFinished: true);
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
                  itemCount: marketBakeryDataList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.67, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ContainerMarket(
                          function: () {
                            setState(() {
                              widget.totalPrice = widget.totalPrice +
                                  marketBakeryDataList[index].price;
                              marketBakeryDataList[index].counter++;

                              print(widget.totalPrice);
                            });
                          },
                          marketData: marketBakeryDataList[index],
                        ),
                        Customtext(
                          text:
                              'the numbers of items ${marketBakeryDataList[index].counter}',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  }),
            ),
            SubmitButton(function: () {
              AppNavigator.appNavigator(
                  context, SubmitScreen(totalPrice: widget.totalPrice));
            })
          ],
        ),
      ),
    );
  }
}
