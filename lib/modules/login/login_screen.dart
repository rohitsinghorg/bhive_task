import 'dart:developer';

import 'package:bhive_task/core/core.dart';
import 'package:bhive_task/modules/login/login_controller.dart';
import 'package:bhive_task/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(children: [
      VerticalSpace4(),
      Icon(
        Icons.ac_unit_rounded,
        color: primaryColor,
        size: 6.0.hp,
      ),
      VerticalSpace2(),
      normalText(
        loginScreen,
        size: 16.0.sp,
        fontWeight: FontWeight.w800,
        align: TextAlign.center,
      ),
      normalText(
        pleaseSignInToContinue,
        size: 8.0.sp,
        textColor: greyColor,
        fontWeight: FontWeight.w400,
        align: TextAlign.center,
      ),
      VerticalSpace4(),
      Form(
        key: controller.loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: controller.mobileOrEmailController,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return youMustNeedToEnterMobileOrNumber;
                } else if (value.trim().isNum) {
                  if (value.trim().length == 10) {
                    return null;
                  }
                  return pleaseEnterAValidEmail;
                } else if (!value.trim().isNum) {
                  if (value.trim().isEmail) {
                    return null;
                  }
                  return pleaseEnterAValidEmail;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: HelperWidget.inputFieldDecoration(
                  pleaseEnterEmailMobileOrNumber),
              maxLines: 1,
              textInputAction: TextInputAction.done,
            ),
            VerticalSpace2(),
            MainButton(
              buttonText: login,
              onTap: () => controller.onSubmit(),
            ),
          ],
        ),
      ),
      VerticalSpace1(),
      Obx(
        () => CheckboxListTile(
          title: normalText(
            "Do you have referral code?",
            size: 8.0.sp,
            textColor: textColor,
            maxLines: 3,
          ),
          activeColor: primaryColor,
          // selected: !controller.isReferralCodeExist.value,
          value: controller.isReferralCodeExist.value,
          onChanged: (bool? value) {
            log("Referral Code is: ${value}");
            controller.isReferralCodeExist.value = value!;
          },
        ),
      ), //CheckboxL
      VerticalSpace1(),
      Obx(
        () => Visibility(
          visible: controller.isReferralCodeExist.value,
          child: TextFormField(
            controller: controller.referralCodeController,
            keyboardType: TextInputType.text,
            decoration:
                HelperWidget.inputFieldDecoration(pleaseEnterReferralCode),
            maxLines: 1,
            textInputAction: TextInputAction.done,
          ),
        ),
      ),
      VerticalSpace4(),
      normalText(
        "You must agree with our terms and conditions and privacy policy.",
        size: 6.0.sp,
        textColor: greyColor,
        fontWeight: FontWeight.w300,
        maxLines: 2,
      ),
      VerticalSpace1(),
    ]);
  }
}
