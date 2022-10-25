// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi/controllers/cart_controller.dart';
import 'package:aplikasi/controllers/popular_product_controller.dart';
import 'package:aplikasi/pages/cart/cart_page.dart';
import 'package:aplikasi/pages/home/main_food_page.dart';
import 'package:aplikasi/routes/route_helper.dart';
import 'package:aplikasi/util/app_constants.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_column.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  final int pageId;
  final String page;
  const PopularFoodDetail({Key? key, required this.pageId, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());
    // print("page id is ${pageId}");
    // print("poduct name is ${product.name}");
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
                  image: NetworkImage(
                    AppConstants.BASE_URL +
                        AppConstants.UPLOAD_URL +
                        product.img!,
                  ),
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
                GestureDetector(
                  onTap: () {
                    if (page == "cartpage") {
                      Get.toNamed(RouteHelper.getCartPAge());
                    }else{
                      Get.toNamed(RouteHelper.getInitialPage());
                    }
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios),
                ),
                GetBuilder<PopularProductController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      if (controller.totalItem >= 1) {
                        Get.toNamed(RouteHelper.getCartPAge());
                      }
                    },
                    child: Stack(
                      children: [
                        AppIcon(icon: Icons.shopping_cart_outlined),
                        controller.totalItem >= 1
                            ? Positioned(
                                right: 0,
                                top: 0,
                                child: AppIcon(
                                  icon: Icons.circle,
                                  size: 20,
                                  iconColor: Colors.transparent,
                                  backGroundColor: AppColors.mainColor,
                                ),
                              )
                            : Container(),
                        Get.find<PopularProductController>().totalItem >= 1
                            ? Positioned(
                                right: 5,
                                top: 3,
                                child: BigText(
                                  text: Get.find<PopularProductController>()
                                      .totalItem
                                      .toString(),
                                  size: 12,
                                  color: Colors.white,
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  );
                })
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
                  AppColumn(text: product.name!),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  // ExpandableTextWidget(text: "test")
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description!),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (popularProduct) {
          return Container(
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
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(false);
                        },
                        child: SizedBox(
                          width: Dimentions.width20 * 2,
                          height: Dimentions.height20 *2,
                          child: Icon(
                            Icons.remove,
                            color: AppColors.signColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimentions.width10,
                      ),
                      BigText(text: popularProduct.inCartItems.toString()),
                      SizedBox(
                        width: Dimentions.width10,
                      ),
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(true);
                        },
                        child: SizedBox(
                          width: Dimentions.width20 * 2,
                          height: Dimentions.height20 * 4,
                          child: Icon(
                            Icons.add,
                            color: AppColors.signColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //add to cart container text
                GestureDetector(
                  onTap: () {
                    popularProduct.AddItem(product);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: Dimentions.height20,
                      bottom: Dimentions.height20,
                      left: Dimentions.width20,
                      right: Dimentions.width20,
                    ),
                    child: BigText(
                      text: "\$ ${product.price!} | Add to cart",
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimentions.radius20),
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
