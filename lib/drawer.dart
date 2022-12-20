// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

// ignore: camel_case_types
class _drawerState extends State<drawer> {
  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: null,
          ),
          ListTile(
            title: const Text(
              'Sign Out',
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text(
              'Chats',
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
