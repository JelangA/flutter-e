import 'package:aplikasi/data/repository/cart_repo.dart';
import 'package:aplikasi/models/cart_model.dart';
import 'package:aplikasi/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  void addItem(ProductModel product, int quantity) {
    print("legnh of the item ${_items.length.toString()}");
    _items.putIfAbsent(product.id!, () {
      print(
          "add item to cart id ${product.id!.toString()} quantity ${quantity.toString()}");
      return CartModel(
        id: product.id,
        name: product.name,
        price: product.price,
        img: product.img,
        quantity: quantity,
        isExsit: true,
        time: DateTime.now().toString(),
      );
    });
  }
}
