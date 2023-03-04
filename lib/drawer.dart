// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    const String imageurl =
        "https://media.licdn.com/dms/image/D4D03AQEnugCx1aGiPw/profile-displayphoto-shrink_400_400/0/1672469981031?e=1678320000&v=beta&t=tH-Wnbs2-j_iGMHxsg66iUyN7QkG_Pj42jNa_JoAB88";
    return Drawer(
      backgroundColor: Colors.indigo,
      child: ListView(
        padding: const EdgeInsets.all(0),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(0),
              // ignore: sort_child_properties_last
              child: UserAccountsDrawerHeader(
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageurl)),
                accountEmail: Text("bhurtelkrish123@gmail.com"),
                accountName: Text('Krish Bhurtel'),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home, size: 25),
            iconColor: Colors.white,
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, size: 25),
            iconColor: Colors.white,
            title: Text(
              "Contact me",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.info, size: 25),
            iconColor: Colors.white,
            title: Text(
              "About",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 450),
          Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Copyright © 2023 by Krish Bhurtel",
                  style: TextStyle(color: Colors.white24),
                )),
          )
        ],
      ),
    );
  }
}
