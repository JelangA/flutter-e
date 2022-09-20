import 'package:aplikasi/controllers/popular_product_controller.dart';
import 'package:aplikasi/controllers/recomended_product_controller.dart';
import 'package:aplikasi/pages/food/popular_food_detail.dart';
import 'package:aplikasi/pages/food/recomended_food_detail.dart';
import 'package:aplikasi/pages/home/food_page_body.dart';
import 'package:aplikasi/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecomendedProductController>().getRecomendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
