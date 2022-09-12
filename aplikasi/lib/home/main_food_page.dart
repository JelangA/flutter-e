// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:aplikasi/home/food_page_body.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:aplikasi/widget/big-text.dart';
import 'package:aplikasi/widget/small-text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Shown The Header
          Container(
            child: Container(
              color: Colors.red,
              margin: EdgeInsets.only(top: 55, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Indonesia", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Bandung", color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //body
          FoodPageBody(),
          Container(
            width: 400,
            height: 400,
            color: Colors.brown,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
