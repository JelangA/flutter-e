// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_column.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimentions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food0.jpg"),
                ),
              ),
            ),
          ),
          //icon back dan cart
          Positioned(
            top: Dimentions.height45,
            left: Dimentions.width20,
            right: Dimentions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //introduction
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimentions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimentions.width20,
                right: Dimentions.width20,
                top: Dimentions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimentions.radius20),
                  topLeft: Radius.circular(Dimentions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Hamburg Food"),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  BigText(text: "Introduce"),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimentions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimentions.height30,
            bottom: Dimentions.height30,
            left: Dimentions.width20,
            right: Dimentions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimentions.radius20 * 2),
            topRight: Radius.circular(Dimentions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //min add button continer
            Container(
              padding: EdgeInsets.only(
                top: Dimentions.height20,
                bottom: Dimentions.height20,
                left: Dimentions.width20,
                right: Dimentions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimentions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimentions.width10/2,),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            //add to cart container text
            Container(
              padding: EdgeInsets.only(
                top: Dimentions.height20,
                bottom: Dimentions.height20,
                left: Dimentions.width20,
                right: Dimentions.width20,
              ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color: AppColors.mainColor,
              ),
            )
          
          ],
        ),
      ),
    );
  }
}
