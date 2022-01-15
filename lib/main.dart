import 'package:bhive_task/core/values/strings.dart';
import 'package:bhive_task/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/routes.dart';

void main() {
  runApp(BHiveApp());
}

class BHiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      getPages: AppPages.routes,
      initialRoute: Routes.LOGIN_SCREEN,
    );
  }
}
