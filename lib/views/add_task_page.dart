import 'package:flutter/material.dart';
import 'package:todo_get/controller/todo_conntroller.dart';
import '../utils/common_dependencies.dart';

class AddTaskPage extends StatelessWidget {
  AddTaskPage({Key? key}) : super(key: key);

  final ToDoController _toDoController = Get.find();
  final TextEditingController _taskNameEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              if (!(_taskNameEditingController.text.isBlank ?? true)) {
                _toDoController.addNewTask(_taskNameEditingController.text);
              }
              Get.back();
            },
            icon: const Icon(
              Icons.done,
              color: Colors.black,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: Column(
              children: [
                TextField(
                  controller: _taskNameEditingController,
                  decoration: const InputDecoration(
                    label: Text('Task'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
