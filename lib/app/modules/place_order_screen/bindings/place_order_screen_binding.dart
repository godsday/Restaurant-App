import 'package:get/get.dart';

import '../controllers/place_order_screen_controller.dart';

class PlaceOrderScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceOrderScreenController>(
      () => PlaceOrderScreenController(),
    );
  }
}
