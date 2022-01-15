import 'package:bhive_task/core/core.dart';
import 'package:flutter/material.dart';

///
/// This class is useful to create responsive text throughout the app
///

Text normalText(
  String data, {
  double size = 14,
  Color textColor = textColor,
  TextAlign align = TextAlign.start,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return Text(
    data,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
    style: TextStyle(
      fontSize: size.sp,
      color: textColor,
      fontWeight: fontWeight,
    ),
  );
}
