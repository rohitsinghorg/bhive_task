import 'package:bhive_task/core/core.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final List<Widget> children;

  const BaseScaffold({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.0.wp,
        ),
        child: ListView(
          shrinkWrap: true,
          children: children,
        ),
      ),
    );
  }
}
