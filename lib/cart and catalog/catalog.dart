import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        centerTitle: true,
        title: const Text("Catalog App"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, position) {
            return const Card(
              elevation: 5.0,
              child: Text("hi"),
            );
          },
        ),
      ),
    );
  }
}
