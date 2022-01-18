import 'package:bhive_task/core/core.dart';
import 'package:bhive_task/modules/referral/referral_controller.dart';
import 'package:bhive_task/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReferralScreen extends GetView<ReferralController> {
  const ReferralScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: referral, children: [
      VerticalSpace2(),
      normalText(
        controller.description,
        size: 11.0.sp,
        fontWeight: FontWeight.w500,
        align: TextAlign.left,
        maxLines: 3,
      ),
      VerticalSpace1(),
      Row(
        children: [
          Expanded(
            child: normalText(
              "Email/Mobile",
              size: 10.0.sp,
              textColor: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: normalText(
              "Referral",
              size: 10.0.sp,
              textColor: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      controller.userList.isEmpty
          ? normalText(noResultFound, textColor: greyColor, size: 10.0.sp)
          : ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 1.0.hp),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? greyColor.withOpacity(0.2) : whiteColor,
                  margin: EdgeInsets.symmetric(vertical: 0.2.hp),
                  padding: EdgeInsets.symmetric(vertical: 0.5.hp),
                  child: Row(
                    children: [
                      Expanded(
                        child: normalText(
                            controller.userList[index].userId ?? '-',
                            size: 10.0.sp,
                            textColor: textColor),
                      ),
                      Expanded(
                        child: normalText(
                            controller.userList[index].referredBy ?? '-',
                            size: 10.0.sp,
                            textColor: textColor),
                      ),
                    ],
                  ),
                );
              },
              itemCount: controller.userList.length),
    ]);
  }
}
