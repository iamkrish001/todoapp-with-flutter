import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.purple,
      child: Center(
          child: Text(
        "Settings",
        style: TextStyle(fontSize: 30, color: Colors.white),
      )),
    );
  }
}
