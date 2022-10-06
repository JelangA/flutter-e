import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimentions.height20 * 3,
            left: Dimentions.width20,
            right: Dimentions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  iconColor: Colors.white,
                  backGroundColor: AppColors.mainColor,
                  iconSize: Dimentions.iconSize24,
                ),
                SizedBox(
                  width: Dimentions.width20 * 5,
                ),
                AppIcon(
                  icon: Icons.home_outlined,
                  iconColor: Colors.white,
                  backGroundColor: AppColors.mainColor,
                  iconSize: Dimentions.iconSize24,
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                  iconColor: Colors.white,
                  backGroundColor: AppColors.mainColor,
                  iconSize: Dimentions.iconSize24,
                ),
              ],
            ),
          ),
          Positioned(
            top: Dimentions.height20 * 5,
            left: Dimentions.width20,
            right: Dimentions.width20,
            bottom: 0,
            child: Container(
              color: Colors.red,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return Container(
                      height: 100,
                      width: 200,
                      color: Colors.blue,
                      margin: EdgeInsets.only(bottom: 10),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
