import 'package:aplikasi/data/api/api_client.dart';
import 'package:aplikasi/util/app_constants.dart';
import 'package:get/get.dart';

class RecomendedProductRepo extends GetxService {
  final ApiClient apiClient;

  RecomendedProductRepo({required this.apiClient});

  Future<Response> getRecomendedProductList() async { 
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
