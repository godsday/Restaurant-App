import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:resto/app/modules/place_order_screen/views/place_order_screen_view.dart';

import '../../widgets/expansiontile_custom.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    homeController.fetchdata();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: width,
                  height: height - 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GetBuilder<HomeController>(builder: (context) {
                          return Visibility(
                            visible: homeController.showdata,
                            child: CustomExpansionTile(
                                tileHeading: "Popular",
                                iList: homeController.newpopular.length > 3
                                    ? homeController.newpopular.sublist(
                                        homeController.newpopular.length - 3)
                                    : homeController.newpopular),
                          );
                        }),
                        CustomExpansionTile(
                            tileHeading: "Soup",
                            iList: homeController.cat1List),
                        CustomExpansionTile(
                          tileHeading: "Juice",
                          iList: homeController.cat2List,
                        ),
                        CustomExpansionTile(
                          tileHeading: "Meals",
                          iList: homeController.cat3List,
                        ),
                        CustomExpansionTile(
                          tileHeading: "Dinner",
                          iList: homeController.cat4List,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        homeController.cleardata();
                        Get.to(() => PlaceOrderScreenView());
                      },
                      child: GetBuilder<HomeController>(builder: (context) {
                        return homeController.totalamount != 0
                            ? Container(
                                width: 350,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Colors.amber.shade700,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      "Place Order",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    homeController.totalamount != 0
                                        ? Text(
                                            "\$ ${homeController.totalamount}")
                                        : const SizedBox()
                                  ],
                                ))
                            : const SizedBox();
                      }),
                    ))
              ],
            ),
          ],
        ));
  }
}


