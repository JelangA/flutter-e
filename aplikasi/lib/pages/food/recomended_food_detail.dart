// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/util/dimensions.dart';
import 'package:aplikasi/widget/app_icon.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(size: Dimentions.font26, text: "hamburger")),
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
              background: Image.asset(
                "assets/image/food0.jpg",
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
                    text:
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque expedita deleniti pariatur modi commodi officiis, eveniet rem aspernatur soluta hic ducimus, quaerat est magnam aliquid mollitia distinctio sapiente delectus recusandae. Ipsam cupiditate placeat dignissimos delectus tenetur! Fugit suscipit officia nemo quas, consequuntur a nam in! Nihil, modi doloribus maiores debitis in sint aut numquam sed aperiam saepe, velit quod minus, pariatur voluptate. Suscipit voluptate quam nesciunt! Nulla accusantium soluta, magni quia dolores nisi cum ex harum odio voluptatum nostrum corporis, corrupti, sequi optio minus asperiores cumque? Autem sunt veniam quidem, temporibus repudiandae fuga possimus neque magni quam, asperiores iure sint.Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque expedita deleniti pariatur modi commodi officiis, eveniet rem aspernatur soluta hic ducimus, quaerat est magnam aliquid mollitia distinctio sapiente delectus recusandae. Ipsam cupiditate placeat dignissimos delectus tenetur! Fugit suscipit officia nemo quas, consequuntur a nam in! Nihil, modi doloribus maiores debitis in sint aut numquam sed aperiam saepe, velit quod minus, pariatur voluptate. Suscipit voluptate quam nesciunt! Nulla accusantium soluta, magni quia dolores nisi cum ex harum odio voluptatum nostrum corporis, corrupti, sequi optio minus asperiores cumque? Autem sunt veniam quidem, temporibus repudiandae fuga possimus neque magni quam, asperiores iure sint.Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta dolore suscipit aperiam temporibus quaerat delectus eveniet quam corporis! Corrupti repellendus asperiores harum explicabo rerum nisi libero quaerat totam est amet nemo quisquam incidunt aperiam maiores id culpa, ipsum ullam sed facere iusto eius. Hic labore consequatur animi. Architecto quos quae iusto ullam, debitis consequatur minima laborum minus velit eos sit, rem cumque fugit culpa praesentium assumenda qui porro repudiandae quasi, neque mollitia exercitationem perferendis necessitatibus. Odio quibusdam aspernatur vero enim! Distinctio rem quo repellendus mollitia sint optio veritatis nulla modi, nihil quae ex sunt minima molestias praesentium voluptatibus error ducimus nobis, itaque obcaecati corporis eos dolorum voluptatum! Quam nam, cumque provident, velit qui quas sequi nihil id veniam quidem excepturi sit ipsam totam iure incidunt. Voluptate porro nisi inventore architecto autem accusamus alias nulla illo, ea pariatur vel fugiat possimus quibusdam provident non ipsam eveniet ratione optio deleniti laudantium totam necessitatibus obcaecati blanditiis. Libero voluptate porro sit facilis odit dolorum itaque, aliquam aspernatur iste eum illo cumque incidunt consequatur similique ex necessitatibus. Ipsum dolor asperiores, odit iste quisquam quos voluptatibus nihil numquam ipsa vel magnam maiores cupiditate? Quidem suscipit sint dicta minima odit illo expedita necessitatibus voluptatum, animi consequuntur dolore?",
                  ),
                  margin: EdgeInsets.only(
                      left: Dimentions.width20, right: Dimentions.width20))
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(
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
                AppIcon(
                  iconSize: Dimentions.iconSize24,
                  iconColor: Colors.white,
                  backGroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimentions.font26,
                ),
                AppIcon(
                  iconSize: Dimentions.iconSize24,
                  iconColor: Colors.white,
                  backGroundColor: AppColors.mainColor,
                  icon: Icons.add,
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
        ],
      ),
    );
  }
}
