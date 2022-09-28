


import 'package:get/get.dart';
// import 'package:resto/app/modules/home/data_model.dart';
import 'package:resto/app/routes/app_pages.dart';

import '../../home/controllers/home_controller.dart';

class PlaceOrderScreenController extends GetxController {

  final homeController = Get.find<HomeController>();
  
  @override
  void onInit() {
    gotoHome();
    super.onInit();
  }
// List<Category> newpopular=[];
Future gotoHome()async{
 
 
 await Future.delayed(const Duration(seconds: 1));

  Get.offNamed(Routes.HOME);
}
}
