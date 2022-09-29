import 'package:aplikasi/data/repository/popular_product_repo.dart';
import 'package:aplikasi/data/repository/recomended_product_repo.dart';
import 'package:aplikasi/models/products_model.dart';
import 'package:get/get.dart';

class RecomendedProductController extends GetxController {
  final RecomendedProductRepo recomendedProductRepo;

  RecomendedProductController({required this.recomendedProductRepo});
  List<dynamic> _recomendedProductList = [];
  List<dynamic> get recomendedProductList => _recomendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecomendedProductList() async {
    Response response = await recomendedProductRepo.getRecomendedProductList();
    if (response.statusCode == 200) {
      print("dapet recomended produk"); 
      // _recomendedProductList = [];
      _recomendedProductList.addAll(Product.fromJson(response.body).product);
      // print(popularProductList);
      _isLoaded = true;
      update();
    } else {
      print(response.body);
    }
  }



}
