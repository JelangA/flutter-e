// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi/controllers/cart_controller.dart';
import 'package:aplikasi/controllers/popular_product_controller.dart';
import 'package:aplikasi/controllers/recomended_product_controller.dart';
import 'package:aplikasi/pages/cart/cart_page.dart';
import 'package:aplikasi/routes/route_helper.dart';
import 'package:aplikasi/util/app_constants.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;
  final String page;
  const RecommendedFoodDetail({Key? key, required this.pageId, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecomendedProductController>().recomendedProductList[pageId];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      if (page == "cartpage") {
                        Get.toNamed(RouteHelper.getCartPAge());
                      } else {
                        Get.toNamed(RouteHelper.getInitialPage());
                      }
                    },
                    child: AppIcon(icon: Icons.clear)),
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
                        Get.find<PopularProductController>().totalItem >= 1
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
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(size: Dimentions.font26, text: product.name!),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimentions.radius20),
                    topRight: Radius.circular(Dimentions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.BASE_URL + AppConstants.UPLOAD_URL + product.img!,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text: product.description!,
                  ),
                  margin: EdgeInsets.only(
                      left: Dimentions.width20, right: Dimentions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          GetBuilder<PopularProductController>(builder: (controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimentions.width20 * 2.5,
                right: Dimentions.width20 * 2.5,
                top: Dimentions.height10,
                bottom: Dimentions.height10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.setQuantity(false);
                    },
                    child: AppIcon(
                      iconSize: Dimentions.iconSize24,
                      iconColor: Colors.white,
                      backGroundColor: AppColors.mainColor,
                      icon: Icons.remove,
                    ),
                  ),
                  BigText(
                    text: "\$ ${product.price!} X ${controller.inCartItems} ",
                    color: AppColors.mainBlackColor,
                    size: Dimentions.font26,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.setQuantity(true);
                    },
                    child: AppIcon(
                      iconSize: Dimentions.iconSize24,
                      iconColor: Colors.white,
                      backGroundColor: AppColors.mainColor,
                      icon: Icons.add,
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    ),
                  ),
                  //add to cart container text

                  GestureDetector(
                    onTap: () {
                      controller.AddItem(product);
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
                        borderRadius:
                            BorderRadius.circular(Dimentions.radius20),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
