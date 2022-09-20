import 'package:aplikasi/controllers/popular_product_controller.dart';
import 'package:aplikasi/controllers/recomended_product_controller.dart';
import 'package:aplikasi/data/api/api_client.dart';
import 'package:aplikasi/data/repository/popular_product_repo.dart';
import 'package:aplikasi/data/repository/recomended_product_repo.dart';
import 'package:aplikasi/util/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecomendedProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecomendedProductController(recomendedProductRepo: Get.find()));
}
