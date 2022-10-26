import 'package:aplikasi/pages/auth/login_page.dart';
import 'package:aplikasi/pages/cart/cart_page.dart';
import 'package:aplikasi/pages/food/popular_food_detail.dart';
import 'package:aplikasi/pages/food/recomended_food_detail.dart';
import 'package:aplikasi/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recomended-food";
  static const String cartPage = "/cart-page";
  static const String loginPage = "/login-page";

  static String getInitialPage() => '$initial';
  static String getPopularFood(int pageId, String page) =>
      '$popularFood?pageId=$pageId&page=$page';
  static String getRecomendedFood(int pageId, String page) =>
      '$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPAge() => '$cartPage';
  static String getLoginPage() => '$loginPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return PopularFoodDetail(
            pageId: int.parse(pageId!),
            page: page!,
          );
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),
    GetPage(
      name: loginPage,
      page: () {
        return LoginPage();
      },
    )
  ];
}
