// ignore_for_file: prefer_const_constructors

import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/icon_and_text.dart';
import 'package:aplikasi/widget/small-text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimentions.font20,
        ),
        SizedBox(
          height: Dimentions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: Dimentions.iconSize16,
                ),
              ),
            ),
            SizedBox(
              width: Dimentions.width10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimentions.width10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: Dimentions.width10,
            ),
            SmallText(text: "comment")
          ],
        ),
        SizedBox(
          height: Dimentions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.shopping_cart,
                text: "20RB terjual",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
              icon: Icons.circle,
              text: "baru",
              iconColor: AppColors.iconColor1,
            ),
          ],
        ),
      ],
    );
  }
}
