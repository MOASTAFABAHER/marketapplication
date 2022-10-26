import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:marketapplication/classes/market_data.dart';
import 'package:marketapplication/components/custom_text.dart';

class ContainerMarket extends StatefulWidget {
  final MarketData marketData;
  Function()? function;
  ContainerMarket({required this.marketData, this.function});

  @override
  State<ContainerMarket> createState() => _ContainerMarketState();
}

class _ContainerMarketState extends State<ContainerMarket> {
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    color: Colors.red,
                    iconSize: 18,
                  ),
                ),
                Image(
                  image: NetworkImage(widget.marketData.image),
                  fit: BoxFit.fill,
                ),
                Customtext(
                  maxLine: 1,
                  text: widget.marketData.name,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                Customtext(
                  text: widget.marketData.country,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                Customtext(
                  text: '${widget.marketData.price}',
                  fontSize: 16,
                  color: Colors.green,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(3),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(3)),
                      ),
                      child: IconButton(
                          onPressed: widget.function,
                          icon: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ))),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
