import 'package:aplikasi/controllers/cart_controller.dart';
import 'package:aplikasi/data/repository/popular_product_repo.dart';
import 'package:aplikasi/models/products_model.dart';
import 'package:aplikasi/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItem = 0;
  int get inCartItems => _inCartItem + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      // print("dapet popuar produk");
      // _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).product);
      // print(popularProductList);
      _isLoaded = true;
      update();
    } else {
      print("ngak dapet popular");
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar(
        "item cont",
        "melebihi batas",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 0;
    } else if (quantity > 20) {
      Get.snackbar(
        "item cont",
        "melebihi batas",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(CartController cart) {
    _quantity = 0;
    _inCartItem = 0;
    _cart = cart;
    //if exist
    //GET item cart dari storage
  }

  void AddItem(ProductModel product) {
    _cart.addItem(product, _quantity);
  }
}
