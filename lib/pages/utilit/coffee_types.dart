// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String coffeTypes;
  final bool isSeclected;
  final VoidCallback onTap;

  CoffeType(
      {required this.coffeTypes,
      required this.isSeclected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          coffeTypes,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSeclected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
