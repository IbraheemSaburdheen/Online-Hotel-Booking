// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';

class CommonBar extends StatelessWidget {
  final Icon? icon;
  final String? barText;
  final EdgeInsetsGeometry? padding;
  final RadioButtonInputElement? button;
  const CommonBar(
      {Key? key, this.icon, this.barText, this.button, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(),
      
    );
  }
}
