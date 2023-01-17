// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple.shade200,
      child: Center(child: RichText(text: TextSpan(text: "Hi, this is the cart"))),
    );
  }
}
