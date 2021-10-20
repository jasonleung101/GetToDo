import 'package:flutter/material.dart';
import 'package:todo_get/controller/todo_conntroller.dart';
import 'package:todo_get/utils/route.dart';
import '../utils/common_dependencies.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final ToDoController _toDoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GetTodo',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(TodoRoute.addTaskPage);
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          color: Colors.white,
          child: Obx(
            () => _toDoController.todoList.isEmpty
                ? const Center(
                    child: Text("You don't have any ToDo item."),
                  )
                : Obx(
                    () => ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      itemBuilder: (context, index) {
                        final data = _toDoController.todoList[index];
                        return Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                value: data['done'],
                                onChanged: (val) {
                                  _toDoController.updateTask(index, val!);
                                },
                                title: Text(
                                  data['task'],
                                  style: TextStyle(
                                    decoration: data['done'] == true
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _toDoController.deleteTask(index);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        );
                      },
                      itemCount: _toDoController.todoList.length,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
