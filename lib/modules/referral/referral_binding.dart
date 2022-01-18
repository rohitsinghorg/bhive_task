import 'package:bhive_task/modules/referral/referral_controller.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:get/get.dart';

class ReferralBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ReferralController(
        authController: Get.find<AuthController>(),
      ),
    );
  }
}
