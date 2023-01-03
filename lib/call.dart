// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Material(
      color: Color.fromARGB(255, 164, 226, 255),
      child: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Column(
                children: [
                  Card(
                    shadowColor: Colors.red[900],
                    elevation: 10,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 135, 153, 254),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: Text('Hi'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Card(
                      shadowColor: Colors.red[900],
                      elevation: 10,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 135, 153, 254),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.red[900],
                    elevation: 10,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 295,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 135, 153, 254),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Card(
                      shadowColor: Colors.red[900],
                      elevation: 10,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 135, 153, 254),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Card(
                      shadowColor: Colors.red[900],
                      elevation: 10,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: 295,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 135, 153, 254),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Card(
                      shadowColor: Colors.red[900],
                      elevation: 10,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 135, 153, 254),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
