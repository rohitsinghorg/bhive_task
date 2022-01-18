import 'package:bhive_task/data/models/user_list_model.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:get/get.dart';

import '../../core/core.dart';

class ReferralController extends GetxController {
  final AuthController authController;

  ReferralController({
    required this.authController,
  });

  List<User> get userList => Get.arguments == null
      ? authController.userList!
      : authController.userList!
          .where((e) => e.userId == authController.storedUser!.userId)
          .toList();

  String get description =>
      Get.arguments == null ? referralDesc : referralUserDesc;

  @override
  void onReady() {
    super.onReady();
  }
}
