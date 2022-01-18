import 'package:bhive_task/data/models/user_list_model.dart';
import 'package:bhive_task/routes/routes.dart';
import 'package:bhive_task/shared/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController? mobileOrEmailController = TextEditingController();
  TextEditingController? referralCodeController = TextEditingController();
  RxBool isReferralCodeExist = false.obs;

  final AuthController authController;

  LoginController({
    required this.authController,
  });

  @override
  void onReady() {
    /// if user has already signed in; then redirect the user to the dashboard
    if (authController.storedUser?.userId != null) {
      Get.offAllNamed(Routes.DASHBOARD_SCREEN);
    }
    super.onReady();
  }

  void onSubmit() {
    if (loginFormKey.currentState!.validate()) {
      /// redirect user to dashboard
      authController.saveUser(User(
          userId: mobileOrEmailController?.text.trim(),
          referredBy: referralCodeController?.text.trim()));
      Get.offAndToNamed(Routes.DASHBOARD_SCREEN);
    }
  }

  @override
  void dispose() {
    mobileOrEmailController?.dispose();
    referralCodeController?.dispose();
    super.dispose();
  }
}
