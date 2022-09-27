import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/menu_screen/bindings/menu_screen_binding.dart';
import '../modules/menu_screen/views/menu_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MENU_SCREEN,
      page: () => const MenuScreenView(),
      binding: MenuScreenBinding(),
    ),
  ];
}
