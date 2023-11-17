// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.textSize,
    this.isText = false,
    this.maxLine = 10,
  }) : super(key: key);
  final String text;
  final Color color;
  final double textSize;
  bool isText;
  int maxLine = 10;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        fontSize: textSize,
        fontWeight: isText ? FontWeight.w600 : FontWeight.w400,
      ),
    );
  }
}
