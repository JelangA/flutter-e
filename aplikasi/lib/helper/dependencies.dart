
import 'package:aplikasi/data/api/api_client.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://www.db.com"));
}
