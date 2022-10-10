import 'package:aplikasi/controllers/cart_controller.dart';
import 'package:aplikasi/pages/home/main_food_page.dart';
import 'package:aplikasi/routes/route_helper.dart';
import 'package:aplikasi/util/app_constants.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/small-text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitialPage());
                  },
                  child: AppIcon(
                    icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    backGroundColor: AppColors.mainColor,
                    iconSize: Dimentions.iconSize24,
                  ),
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
              margin: EdgeInsets.only(top: Dimentions.height15),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GetBuilder<CartController>(builder: (CartController) {
                  var _cartList = CartController.getItems;
                  return ListView.builder(
                    itemCount: _cartList.length,
                    itemBuilder: (_, index) {
                      return Container(
                        width: double.maxFinite,
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              width: Dimentions.height20 * 5,
                              height: Dimentions.height20 * 5,
                              margin:
                                  EdgeInsets.only(bottom: Dimentions.height10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    AppConstants.BASE_URL +
                                        AppConstants.UPLOAD_URL +
                                        CartController.getItems[index].img!,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(
                                  Dimentions.radius20,
                                ),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: Dimentions.width10,
                            ),
                            Expanded(
                              child: Container(
                                height: Dimentions.height20 * 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    BigText(
                                      text:
                                          CartController.getItems[index].name!,
                                      color: Colors.black54,
                                    ),
                                    SmallText(text: "Spy"),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        BigText(
                                          text: CartController
                                              .getItems[index].price!
                                              .toString(),
                                          color: Colors.redAccent,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            top: Dimentions.height10,
                                            bottom: Dimentions.height10,
                                            left: Dimentions.width10,
                                            right: Dimentions.width10,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimentions.radius20),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  CartController.addItem(
                                                      _cartList[index].product!,
                                                      -1);
                                                  // popularProduct
                                                  //     .setQuantity(false);
                                                },
                                                child: Icon(
                                                  Icons.remove,
                                                  color: AppColors.signColor,
                                                ),
                                              ),
                                              SizedBox(
                                                width: Dimentions.width10,
                                              ),
                                              BigText(
                                                text: _cartList[index]
                                                    .quantity!
                                                    .toString(),
                                                //popularProduct.inCartItems
                                                //.toString()
                                              ),
                                              SizedBox(
                                                width: Dimentions.width10,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  CartController.addItem(
                                                      _cartList[index].product!,
                                                      1);
                                                  // popularProduct
                                                  //     .setQuantity(true);
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: AppColors.signColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
