import 'package:flutter/material.dart';
import '../utils/common_dependencies.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

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
              // Get.toNamed(TodoRoute.addTaskPage);
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
        ),
      ),
    );
  }
}
