import 'package:flutter/material.dart';

import 'package:flutter_app/firstpage.dart';
import 'package:flutter_app/secondpage.dart';
import 'package:flutter_app/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: "/1",
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        '/1': (context) => const firstpage(),
        '/2': (context) => const secondpage(),
      },
      debugShowCheckedModeBanner: false,
      home: const loginpage(),
    );
  }
}
