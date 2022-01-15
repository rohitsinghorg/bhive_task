import 'package:bhive_task/core/core.dart';
import 'package:bhive_task/modules/login/login_controller.dart';
import 'package:bhive_task/shared/main_button.dart';
import 'package:bhive_task/shared/shared.dart';
import 'package:bhive_task/shared/vertical_space_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(children: [
      normalText(
        "Login Screen",
      ),
      VerticalSpace2(),
      TextFormField(
        controller: controller.mobileOrEmailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.5.wp),
          ),
        ),
        maxLines: 1,
        textInputAction: TextInputAction.done,
      ),
      MainButton(
        buttonText: "Login",
        onTap: () => controller.onSubmit(),
      ),
    ]);
  }
}
