import 'package:bhive_task/core/core.dart';
import 'package:bhive_task/shared/shared.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  final List<Widget>? actions;

  const BaseScaffold({
    this.title,
    required this.children,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: title == null ? SizedBox() : normalText(title ?? ''),
        centerTitle: true,
        actions: actions,
        iconTheme: IconThemeData(
          color: textColor,
        ),
      ),
      backgroundColor: backgroundColor,
      // resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.0.wp,
        ),
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: children,
        ),
      ),
    );
  }
}
