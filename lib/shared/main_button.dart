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
      onPressed: onTap(),
      child: normalText(buttonText),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          100.0.wp,
          5.2.hp,
        ),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0.wp),
        ),
      ),
    );
  }
}
