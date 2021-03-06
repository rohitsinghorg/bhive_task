import 'package:bhive_task/modules/dashboard/dashboard_controller.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => DashboardController(
        authController: Get.find<AuthController>(),
      ),
    );
  }
}
