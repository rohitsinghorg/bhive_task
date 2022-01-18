import 'dart:developer';

import 'package:bhive_task/routes/routes.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class DashboardController extends GetxController {
  final AuthController authController;

  DashboardController({required this.authController});

  void onReferFriendTap() {
    Share.share(
        'Hey, Please go to BHive.fund and use my referral code as ${authController.storedUser!.userId ?? '-'}',
        subject: 'Message from BHive.fund');
  }

  void onReferralDashboardTap() {
    log("Hey:your current ID is: ");
    Get.toNamed(Routes.REFERRAL_SCREEN, arguments: {
      "showGlobal": false,
    });
  }

  void logout() {
    authController.deleteStoredUser();
    Get.offAllNamed(Routes.LOGIN_SCREEN);
  }
}
