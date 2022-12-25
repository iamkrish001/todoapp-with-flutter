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
  bool change = false;
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
                  obscureText: true, // to hide the password
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    setState(() {
                      change = true;
                    });
                  },
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    width: change ? 50 : 150,
                    height: change ? 50 : 40,
                    duration: const Duration(seconds: 4),
                    decoration: BoxDecoration(
                      shape: change ? BoxShape.circle : BoxShape.rectangle,
                      color: Colors.indigo,
                    ),
                    child: change
                        ? const Icon(Icons.done, color: Colors.white)
                        : const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
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
