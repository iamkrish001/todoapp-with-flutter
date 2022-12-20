import 'package:flutter/material.dart';

// ignore: camel_case_types
class secondpage extends StatelessWidget {
  const secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
      ),
      body: Container(
        height: 150,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.purple[100],
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.music_note),
                Text(
                  'MUSIC',
                  style: TextStyle(
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 232, 0, 253)),
                )
              ],
            ),
            const Text(
              'Music is what makes me feel alive, it is what I love and I like poetry too ',
            ),
            Row(
              children: const [
                Text(
                  'EXPLORE MUSIC',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 19, 199, 25),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Color.fromARGB(255, 19, 199, 25),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
