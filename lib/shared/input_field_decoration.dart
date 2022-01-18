import 'package:flutter/material.dart';
import 'package:bhive_task/core/core.dart';

class HelperWidget {
  static InputDecoration inputFieldDecoration([String labelText = ""]) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.5.wp),
        borderSide: BorderSide(
          color: Colors.purple,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.5.wp),
        borderSide: BorderSide(
          color: Colors.purple,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.5.wp),
        borderSide: BorderSide(
          color: dangerColor,
          width: 2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.5.wp),
        borderSide: BorderSide(
          color: dangerColor,
          width: 2,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 5.0.wp,
        vertical: 2.0.hp,
      ),
      labelText: labelText,
    );
  }
}
