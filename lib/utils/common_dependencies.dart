export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_get/controller/todo_conntroller.dart';

final storage = GetStorage();

Future<void> configEnvironmentAndDependencies() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.black,
  ));
  await GetStorage.init();
  Get.put(ToDoController(), permanent: true);
}
