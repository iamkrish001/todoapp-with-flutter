import 'package:flutter/material.dart';

class Save extends StatelessWidget {
  const Save({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text("Save"),
      onTap: (() {}),
    );
  }
}

class Cancel extends StatelessWidget {
  const Cancel({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Text("Cancel"),
        onTap: (() {
          Navigator.pop(context);
        }));
  }
}
