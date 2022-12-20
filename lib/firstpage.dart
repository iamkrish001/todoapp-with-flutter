import 'package:flutter/material.dart';
import 'package:flutter_app/drawer.dart';
import 'package:flutter_app/secondpage.dart';

// ignore: camel_case_types
class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        drawer: drawer(),
        appBar: AppBar(
          title: const Text('firstpage'),
          centerTitle: true,
          // ignore: prefer_const_literals_to_create_immutables
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_call))
          ],
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text(
              'press to navigate \n to 2nd page',
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const secondpage()));
            },
          ),
        ));
  }
}
