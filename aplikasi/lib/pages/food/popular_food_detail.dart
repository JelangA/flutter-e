// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi/controllers/popular_product_controller.dart';
import 'package:aplikasi/pages/home/main_food_page.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_column.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  int pageId;
  PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    print("page id is ${pageId}");
    print("poduct name is ${product.name.toString()}");
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
                GestureDetector(
                  onTap: () {
                    Get.to(() => MainFoodPage());
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios),
                ),
                GestureDetector(
                  child: AppIcon(icon: Icons.shopping_cart_outlined),
                ),
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
                  // ExpandableTextWidget(text: "test")
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta dolore suscipit aperiam temporibus quaerat delectus eveniet quam corporis! Corrupti repellendus asperiores harum explicabo rerum nisi libero quaerat totam est amet nemo quisquam incidunt aperiam maiores id culpa, ipsum ullam sed facere iusto eius. Hic labore consequatur animi. Architecto quos quae iusto ullam, debitis consequatur minima laborum minus velit eos sit, rem cumque fugit culpa praesentium assumenda qui porro repudiandae quasi, neque mollitia exercitationem perferendis necessitatibus. Odio quibusdam aspernatur vero enim! Distinctio rem quo repellendus mollitia sint optio veritatis nulla modi, nihil quae ex sunt minima molestias praesentium voluptatibus error ducimus nobis, itaque obcaecati corporis eos dolorum voluptatum! Quam nam, cumque provident, velit qui quas sequi nihil id veniam quidem excepturi sit ipsam totam iure incidunt. Voluptate porro nisi inventore architecto autem accusamus alias nulla illo, ea pariatur vel fugiat possimus quibusdam provident non ipsam eveniet ratione optio deleniti laudantium totam necessitatibus obcaecati blanditiis. Libero voluptate porro sit facilis odit dolorum itaque, aliquam aspernatur iste eum illo cumque incidunt consequatur similique ex necessitatibus. Ipsum dolor asperiores, odit iste quisquam quos voluptatibus nihil numquam ipsa vel magnam maiores cupiditate? Quidem suscipit sint dicta minima odit illo expedita necessitatibus voluptatum, animi consequuntur dolore?"),
                    ),
                  ),
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
                  SizedBox(
                    width: Dimentions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimentions.width10 / 2,
                  ),
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
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
