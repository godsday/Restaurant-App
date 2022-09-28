import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/place_order_screen/bindings/place_order_screen_binding.dart';
import '../modules/place_order_screen/views/place_order_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PLACE_ORDER_SCREEN,
      page: () =>  PlaceOrderScreenView(),
      binding: PlaceOrderScreenBinding(),
    ),
  ];
}
