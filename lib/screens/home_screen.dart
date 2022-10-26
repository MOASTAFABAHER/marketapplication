import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapplication/classes/icons_data.dart';
import 'package:marketapplication/classes/market_data.dart';
import 'package:marketapplication/components/custom_container_market.dart';
import 'package:marketapplication/components/custom_icon_button.dart';
import 'package:marketapplication/components/custom_textform.dart';
import 'package:marketapplication/screens/bakery_screen.dart';
import 'package:marketapplication/screens/fruits_screen.dart';
import 'package:marketapplication/screens/vegitables_screen.dart';

import '../components/custom_text.dart';

class HomeScreen extends StatefulWidget {
  double totalPrice;

  HomeScreen({required this.totalPrice});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'EDEkA',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
                      color: Colors.blue,
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
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //hawelt a3mlha b list view.builder bs msh hynf3 3shan el function
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CustomIconButton(
                      iconsData: iconsDataList[0],
                      onTap: () {
                        print('backery');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BackeryScreen(
                                      totalPrice: widget.totalPrice,
                                    )));
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomIconButton(
                      iconsData: iconsDataList[1],
                      onTap: () {
                        print('Fruits');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FruitsScreen(
                                      totalPrice: widget.totalPrice,
                                    )));
                      },
                    ),
                    CustomIconButton(
                      iconsData: iconsDataList[2],
                      onTap: () {
                        print('backery');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VegetablesScreen(
                              totalPrice: widget.totalPrice,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomIconButton(
                      iconsData: iconsDataList[3],
                      onTap: () {
                        print('backery');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VegetablesScreen(
                                      totalPrice: widget.totalPrice,
                                    )));
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomIconButton(
                      iconsData: iconsDataList[4],
                      onTap: () {
                        print('backery');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BackeryScreen(
                                      totalPrice: widget.totalPrice,
                                    )));
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomIconButton(
                      iconsData: iconsDataList[5],
                      onTap: () {
                        print('backery');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BackeryScreen(
                                      totalPrice: widget.totalPrice,
                                    )));
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: marketDataHomeList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ContainerMarket(
                            function: () {
                              setState(() {
                                widget.totalPrice = widget.totalPrice +
                                    marketDataHomeList[index].price;
                                marketDataHomeList[index].counter++;

                                print(widget.totalPrice);
                              });
                            },
                            marketData: marketDataHomeList[index]),
                        Customtext(
                          text:
                              'the numbers of items ${marketDataHomeList[index].counter}',
                          fontSize: 10,
                          color: Colors.grey,
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
