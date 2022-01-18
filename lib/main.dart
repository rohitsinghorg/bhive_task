import 'package:bhive_task/core/values/strings.dart';
import 'package:bhive_task/data/services/storage_service.dart';
import 'package:bhive_task/initial_binding.dart';
import 'package:bhive_task/routes/app_pages.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'routes/routes.dart';

void main() async {
  await Future.wait([
    GetStorage.init(),
    Get.putAsync(
      () => StorageService().init(),
    ),
  ]);
  runApp(BHiveApp());
}

class BHiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: fontFamily,
      ),
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
      initialRoute: Routes.LOGIN_SCREEN,
    );
  }
}
