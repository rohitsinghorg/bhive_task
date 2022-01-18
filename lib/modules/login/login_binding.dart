import 'package:bhive_task/data/services/storage_service.dart';
import 'package:bhive_task/modules/login/login_controller.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(
        authController: Get.find<AuthController>(),
      ),
    );
  }
}
