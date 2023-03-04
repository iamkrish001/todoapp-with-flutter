// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

// ignore: camel_case_types
class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

// ignore: camel_case_types
class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StoryExpress"), centerTitle: true, actions: [
        IconButton(
          tooltip: "Profile",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));
          },
          icon: Icon(
            Icons.person,
          ),
        ),
      ]),
      body: SingleChildScrollView(),
    );
  }
}

class Profile extends StatelessWidget {
  static Color Merocolor = Colors.deepPurple.shade200;
  final String myimage = "assets/images/myimage.jpg";

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.black26),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black26),
          )),
      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(myimage),
              ),
              SizedBox(height: 40),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 230, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  child: Center(
                      child: TextButton(
                    child: Text("My Account"),
                    onPressed: () {},
                  )),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 230, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  elevation: 0,
                  child: Center(
                      child: TextButton(
                    child: Text("Notifications"),
                    onPressed: () {},
                  )),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 230, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  elevation: 0,
                  child: Center(
                      child: TextButton(
                    child: Text("Settings"),
                    onPressed: () {},
                  )),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 230, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  elevation: 0,
                  child: Center(
                      child: TextButton(
                    child: Text("Help Center"),
                    onPressed: () {},
                  )),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 230, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  elevation: 0,
                  child: Center(
                      child: TextButton(
                    child: Text("Logout"),
                    onPressed: () {},
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
