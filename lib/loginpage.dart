// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

// ignore: camel_case_types
class _loginpageState extends State<loginpage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image.asset(
            "assets/images/auth_image.png",
            fit: BoxFit.cover,
            height: 300,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              color: Colors.indigo,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/1');
                      },
                      child: const Text(
                        'LOGIN',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 65),
                  child: TextButton(
                    child: const Text('Not Registered? \n   Sign Up Here'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/1');
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
