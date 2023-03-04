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
  final _formkey =
      GlobalKey<FormState>(); // global key is used to make the form validate

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      // ! this is called a bang operator, used to specify sth is not null
      {
        setState(() {
          change = true;
          Future.delayed(const Duration(seconds: 1), () async {
            await Navigator.pushNamed(context,
                '/1'); // await means to wait for the promised task to be completed until you execute another code, in this case it is to push login to another page after the animation is completed
            setState(() {
              change = false;
            });
          });
          // ignore: use_build_context_synchronously
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              child: Form(
                key: _formkey,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 8) {
                          return "Password must be of minimum 8 character ";
                        }
                        return null;
                      },
                      obscureText: true, // to hide the password
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter password",
                      ),
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        width: change ? 50 : 150,
                        height: change ? 50 : 40,
                        duration: const Duration(seconds: 1),
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius:
                                BorderRadius.circular(change ? 50 : 8)),
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
            ),
          ],
        ),
      ),
    );
  }
}
