import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      appBar: AppBar(
        title: Text("StoryExpress"),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: "Share",
            onPressed: () {},
            icon: Icon(
              Icons.share,
            ),
            iconSize: 30,
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        spaceBetweenChildren: 2,
        child: Icon(CupertinoIcons.pencil_outline),
        children: [
          SpeedDialChild(child: Icon(FontAwesomeIcons.instagram)),
          SpeedDialChild(child: Icon(Icons.facebook)),
          SpeedDialChild(
              child: Icon(
            FontAwesomeIcons.twitter,
          )),
        ],
      ),
    );
  }
}
