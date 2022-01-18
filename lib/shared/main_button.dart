import 'package:bhive_task/core/core.dart';
import 'package:bhive_task/shared/shared.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  const MainButton({
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      child: normalText(buttonText, textColor: whiteColor),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          100.0.wp,
          5.5.hp,
        ),
        elevation: 0,
        primary: primaryColor,
        onPrimary: primaryLightColor,
        padding: EdgeInsets.symmetric(vertical: 2.0.hp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0.wp),
        ),
      ),
    );
  }
}
