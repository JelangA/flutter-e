import 'package:get/get.dart';

class Dimentions {
  /*class yang berfungsi untuk membuat ukuran container
    menjadi dinamic sesuai dengan ukuran device yang dipakai */

  static double screenHeight = Get.context!.height;
  static double screenwidth = Get.context!.width;

  /// fungsi untuk mengkalkulasikan ukuran pada container dengan device
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  ///dinamic height untuk padding dan margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  ///dinamic width untuk padding dan margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;

  ///ukuran font
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 43.2;
  static double font26 = screenHeight / 32.45;

  //redius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  ///icon size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  //ukuran untuk listview
  static double listViewImgSize = screenwidth / 3.25;
  static double listViewTextContSize = screenwidth / 2.9;

  //popular food
  static double popularFoodImgSize = screenwidth / 2.42;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.03;

  //splash screen
  static double splashImg = screenHeight / 0.20;
}
