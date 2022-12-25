// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Material(
        child: Center(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },

            // ignore: sort_child_properties_last
            child: AnimatedContainer(
              margin: EdgeInsets.all(10),
              height: 300,
              duration: Duration(seconds: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(50),
                  color: Colors.indigo.shade300),
              width: 300,
              alignment: Alignment.center,
              child: Text(
                "Explore \nHold the button for color splash ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
