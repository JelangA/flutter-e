// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/small-text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimentions.iconSize24,),
        const SizedBox(width: 5,),
        SmallText(text: text),
      ]
    );
  }
}
