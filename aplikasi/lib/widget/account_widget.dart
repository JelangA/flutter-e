import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({Key? key, required this.appIcon, required this.bigText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
          left: Dimentions.width20,
          top: Dimentions.width10,
          bottom: Dimentions.width10,
        ),
        child: Row(
          children: [
            appIcon,
            SizedBox(width: Dimentions.width20,),
            bigText
          ],
        ),
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(
      //       blurRadius: 1,
      //       offset: Offset(0, 2),
      //       color: Colors.grey.withOpacity(0.2),
      //     ),
      //   ],
      // ),
    );
  }
}
