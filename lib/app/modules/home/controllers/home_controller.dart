import 'package:get/get.dart';
import 'package:resto/app/data/menu.dart';

import '../data_model.dart';

class HomeController extends GetxController {
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
  List<Category> newpopular = [];
  List<Category> popular = [];
  List<Category> cat1List = [];
  List<Category> cat2List = [];
  List<Category> cat3List = [];
  List<Category> cat4List = [];
  late Data data;

  fetchdata() {
    data = Data.fromJson(menuItems);

    cat1List = data.cat1!;
    cat2List = data.cat2!;
    cat3List = data.cat3!;
    cat4List = data.cat4!;
  }

  dynamic totalamount = 0;
  dynamic addValue = 0;
  bool showdata = false;

  incrementButton(data) {
    popular.add(data);

    data.count = data.count! + 1;

    if (data.count > 0) {
      addValue = data.price;
    }
    totalamount = totalamount! + addValue;

    update();
  }

  decrementButton(data) {
    popular.remove(data);
    if (data.count > 0) {
      data.count = data.count! - 1;
      totalamount = totalamount - data.price;
    }

    update();
  }

  cleardata() {
    if (popular.isNotEmpty) {
      showdata = true;
    }

    newpopular = popular.toSet().toList();
    newpopular.sort((a, b) {
      return b.count!.compareTo(a.count!);
    });

    for (var i = 0; i < newpopular.length - 1; i++) {
      for (var j = i + 1; j < newpopular.length; j++) {
        if (newpopular[i].name == newpopular[j].name) {
          newpopular[i].count = newpopular[i].count! + newpopular[j].count!;
          newpopular.removeAt(j);
          j--;
        }
      }
    }

    totalamount = 0;

    update();
  }
}
