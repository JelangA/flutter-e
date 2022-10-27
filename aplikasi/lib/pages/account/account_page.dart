import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/account_widget.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: Dimentions.height20),
        width: double.maxFinite,
        child: Column(
          children: [
            AppIcon(
              icon: Icons.person,
              backGroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimentions.height45 + Dimentions.height30,
              size: Dimentions.height15 * 10,
            ),
            SizedBox(height: Dimentions.height30),
            AccountWidget(
              appIcon: AppIcon(
                icon: Icons.person,
                backGroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: (Dimentions.height10 * 5) / 2,
                size: Dimentions.height10 * 5,
              ),
              bigText: BigText(
                text: "jelang",
              ),
            ),
            SizedBox(height: Dimentions.height30),
          ],
        ),
      ),
    );
  }
}
