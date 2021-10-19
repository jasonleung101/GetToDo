import 'package:flutter/material.dart';
import 'utils/common_dependencies.dart';
import 'package:todo_get/utils/route.dart';
import 'package:todo_get/views/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => GetMaterialApp(
        title: 'GetTodo',
        builder: (context, widget) {
          return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: LandingPage(),
        getPages: TodoRoute.getPages,
        // locale: LocalizationService.locale,
        // translations: LocalizationService(),
      ),
    );
  }
}
