// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 164, 226, 255),
        body: Center(
          child: Column(
            children: [
              Card(
                elevation: 3.0,
                color: Colors.lightBlue.shade300,
              ),
              SizedBox(
                height: 300,
                width: 225,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/zzelta.png"),
                ),
              ),
              const Padding(padding: EdgeInsets.all(15)),
              Text(
                "Welcome to Zelta",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  child: const Text(
                    "Zelta is an emering brand created by Krish Bhurtel and it is currently the No 1 conglomerate organization in the entire world. ",
                    style: TextStyle(fontSize: 15, wordSpacing: 3),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ],
          ),
        ));
  }
}
