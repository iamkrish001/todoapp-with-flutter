// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_app/buttons.dart';
import 'package:flutter_app/todolist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List ToDoList = [
    ["Do Exercise", false],
    ["Code for an hour", false],
    ["Drink Your Water", true],
    ["Do Your Work", false]
  ];

  void CheckBoxTicked(bool? value, int index) {
    // void means of no returntype , checkboxticked has no return type
    // bool and int are datatypes of value and index like void main (int x, float y) and value and index are inputs provided by the user
    setState(() {
      ToDoList[index][1] = !ToDoList[index][
          1]; // true= false  this means whenever the checkbox is updated with user's interaction make sure to make the check box true as well as false according to user's interaction
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.yellow.shade500,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "TO DO",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return ToDo(
                onChanged: (value) => CheckBoxTicked(value,
                    index), // means whenever the bool value changes call the checkboxticked method and change it's value of that index
                taskcompleted: ToDoList[index][
                    1], //give the boolean thing index one which reads value fromm pre_defined ToDoList
                taskname: ToDoList[index][0],
              );
            },
            itemCount: ToDoList.length), // It means the length of ToDoList

        floatingActionButton: FloatingActionButton(
          onPressed:
              createNewTask, // on pressing createnewtask it runs the function createnewtask which returns alert dialog
          child: Icon(Icons.add),
        ));
  }
}

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
          height: 200,
          width: 80,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Add a new task",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Save(), Cancel()],
          ),
        )
      ],
    );
  }
}
