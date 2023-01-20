import 'package:flutter/material.dart';
import 'package:flutter_app/firstpage.dart';
import 'package:flutter_app/secondpage.dart';
import 'package:flutter_app/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              displayLarge: TextStyle(color: Colors.pink, fontSize: 14),
              displaySmall: TextStyle(color: Colors.yellow, fontSize: 14)),
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.montserrat().fontFamily),

      initialRoute: "/1",
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        '/1': (context) =>  const HomePage(),
        '/2': (context) => const secondpage(),
      },
      debugShowCheckedModeBanner: false,
      home: const loginpage(),
    );
  }
}
