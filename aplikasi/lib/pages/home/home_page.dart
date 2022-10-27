import 'package:aplikasi/pages/account/account_page.dart';
import 'package:aplikasi/pages/cart/cart_page.dart';
import 'package:aplikasi/pages/home/main_food_page.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  // late PersistentTabController _controller;

  List page = [
    MainFoodPage(),
    // CartPage(),
    AccountPage(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.amberAccent,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          onTap: onTapNav,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            // // BottomNavigationBarItem(
            // //   icon: Icon(
            // //     Icons.archive,
            // //   ),
            // //   label: 'histoy',
            // // ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.shopping_cart,
            //   ),
            //   label: 'cart',
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'me',
            ),
          ]),
    );
  }
}