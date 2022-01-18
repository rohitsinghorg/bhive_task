import 'package:bhive_task/core/core.dart';
import 'package:bhive_task/data/services/storage_service.dart';
import 'package:bhive_task/modules/dashboard/dashboard_controller.dart';
import 'package:bhive_task/routes/routes.dart';
import 'package:bhive_task/shared/main_button.dart';
import 'package:bhive_task/shared/shared.dart';
import 'package:bhive_task/shared/vertical_space_1.dart';
import 'package:bhive_task/shared/vertical_space_2.dart';
import 'package:bhive_task/shared/vertical_space_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: dashboard, actions: [
      IconButton(
        onPressed: () {
          Get.toNamed(Routes.REFERRAL_SCREEN);
        },
        icon: Icon(
          Icons.line_style,
          color: textColor,
        ),
      ),
      IconButton(
        onPressed: () => controller.logout(),
        icon: Icon(
          Icons.logout,
          color: textColor,
        ),
      ),
    ], children: [
      VerticalSpace2(),
      normalText(
        heyInvestor,
        size: 16.0.sp,
        fontWeight: FontWeight.w800,
        align: TextAlign.left,
      ),
      VerticalSpace1(),
      normalText(
        dashboardDesc,
        size: 8.0.sp,
        // textColor: greyColor,
        fontWeight: FontWeight.w400,
        align: TextAlign.center,
      ),
      VerticalSpace1(),
      normalText(
        dashboardAnotherDesc,
        size: 8.0.sp,
        // textColor: greyColor,
        fontWeight: FontWeight.w400,
        align: TextAlign.center,
        maxLines: 5,
      ),
      VerticalSpace4(),
      MainButton(
          buttonText: "Refer a Friend",
          onTap: () => controller.onReferFriendTap()),
      VerticalSpace1(),
      MainButton(
          buttonText: "Referral Dashboard",
          onTap: () => controller.onReferralDashboardTap()),
    ]);
  }
}
