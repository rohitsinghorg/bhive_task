import 'package:bhive_task/modules/dashboard/dashboard_binding.dart';
import 'package:bhive_task/modules/dashboard/dashboard_screen.dart';
import 'package:bhive_task/modules/login/login_binding.dart';
import 'package:bhive_task/modules/login/login_screen.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOGIN_SCREEN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD_SCREEN,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
