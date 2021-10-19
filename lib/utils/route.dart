import 'dart:io';

import 'package:get/get.dart';
import 'package:todo_get/views/add_task_page.dart';
import 'package:todo_get/views/landing_page.dart';

class TodoRoute {
  static final _transitionDuration = Platform.isIOS
      ? const Duration(milliseconds: 300)
      : const Duration(milliseconds: 400);

  static const landingPage = '/';
  static const addTaskPage = '/add';

  static final List<GetPage> getPages = [
    GetPage(
      name: landingPage,
      page: () => LandingPage(),
      transitionDuration: _transitionDuration,
    ),
    GetPage(
      name: addTaskPage,
      page: () => AddTaskPage(),
      transitionDuration: _transitionDuration,
    )
  ];
}
