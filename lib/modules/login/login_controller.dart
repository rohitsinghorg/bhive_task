import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController? mobileOrEmailController;

  @override
  void onReady() {
    mobileOrEmailController = TextEditingController();
    super.onReady();
  }

  void onSubmit() {
    log("User entered: ${mobileOrEmailController?.text.trim()}");
  }

  @override
  void onClose() {
    mobileOrEmailController?.dispose();
    super.onClose();
  }
}
