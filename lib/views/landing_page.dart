import 'package:flutter/material.dart';
import 'package:todo_get/utils/route.dart';
import '../utils/common_dependencies.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

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
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            itemBuilder: (context, index) {
              return Card(
                child: SizedBox(
                  width: 1.sw,
                  height: 90.h,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                ),
                elevation: 6,
              );
            },
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}
