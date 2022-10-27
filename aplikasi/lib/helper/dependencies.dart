import 'package:aplikasi/controllers/cart_controller.dart';
import 'package:aplikasi/controllers/popular_product_controller.dart';
import 'package:aplikasi/controllers/recomended_product_controller.dart';
import 'package:aplikasi/data/api/api_client.dart';
import 'package:aplikasi/data/repository/cart_repo.dart';
import 'package:aplikasi/data/repository/popular_product_repo.dart';
import 'package:aplikasi/data/repository/recomended_product_repo.dart';
import 'package:aplikasi/util/app_constants.dart';
import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  // final sharedPreferences = SharedPreferences.getInstance();

  // Get.lazyPut(() => sharedPreferences);

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecomendedProductRepo(apiClient: Get.find()));
  // Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecomendedProductController(recomendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
