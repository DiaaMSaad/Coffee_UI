// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CoffeeTitle extends StatelessWidget {
  final String coffeeImageOath;
  final String coffeeName;
  final String price;
  CoffeeTitle(
      {required this.coffeeImageOath,
      required this.coffeeName,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
          padding: EdgeInsets.all(12),
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coffee image
              ClipRRect(
                child: Image.asset(
                  coffeeImageOath,
                ),
                borderRadius: BorderRadius.circular(12),
              ),

              //coffee name

              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "With Almond Milk",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),

              //price

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$" + price),
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6)),
                        child: Icon(Icons.add)),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
