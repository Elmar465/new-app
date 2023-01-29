import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({super.key, required this.backgroundColor, required this.children});

  // ignore: prefer_typing_uninitialized_variables
  final backgroundColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
         color: backgroundColor,
         borderRadius: BorderRadius.circular(20.0)
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
         children: children
      ),
    );
  }
}