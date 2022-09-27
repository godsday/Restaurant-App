import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../data_model.dart';

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
                        CustomExpansionTile(
                            tileHeading: "Soup",
                            iList: homeController.cat1List),
                        CustomExpansionTile(
                          tileHeading: "chicken",
                          iList: homeController.cat2List,
                        ),
                        CustomExpansionTile(
                          tileHeading: "tisket",
                          iList: homeController.cat3List,
                        ),
                        CustomExpansionTile(
                          tileHeading: "erryyy",
                          iList: homeController.cat4List,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 20,
                    child: Container(
                      width: 350,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(10)),
                      child: GetBuilder<HomeController>(
                        builder: (context) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("Place Order"),
                            Text("${homeController.amount}")
                            ],
                          );
                        }
                      ),
                    ))
              ],
            ),
          ],
        ));
  }
}

class CustomExpansionTile extends StatelessWidget {
  CustomExpansionTile({
    Key? key,
    required this.tileHeading,
    required this.iList,
  }) : super(key: key);

  final controller = Get.put(HomeController());
  final String tileHeading;
  final List<Category> iList;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        backgroundColor: Colors.white38,
        iconColor: Colors.amber.shade900,
        textColor: Colors.amber.shade900,
        title: Text(tileHeading,
            style: const TextStyle(
              fontSize: 22,
            )),
        children: List.generate(iList.length, (index) {
          final data = iList[index];

          return GetBuilder<HomeController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(data.name!,
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          Text("\$ ${data.price!}",
                              style: const TextStyle(fontSize: 17)),
                        ],
                      ),

                      // ElevatedButton(
                      // onPressed: () {
                      //   controller.itemCount(index);
                      // },
                      // child:

                      //  Text("Add")

                      //       )
                      const SizedBox(
                        width: 100,
                      ),

                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.decrementButton(data);
                              },
                              icon: const Icon(Icons.minimize)),
                          GetBuilder<HomeController>(builder: (context) {
                            return Text("${data.count}");
                          }),
                          IconButton(
                              onPressed: () {
                                controller.incrementButton(data);
                                print("${data.name}${data.count}");
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      )
                    ],
                  ),
                ),
              ]

                  // data.count!=0?
                  // ElevatedButton(
                  //     onPressed: () {
                  //       controller.itemCount(index);
                  //     },
                  //     child:

                  //      Text("Add")

                  // )    :

                  ),
            );
          });
        }));
  }
}

// class TextCustom extends StatelessWidget {
//   const TextCustom({
//     Key? key,
//     required this.data, required this.name,
//   }) : super(key: key);

//   final Category data;
//   final String name;

//   @override
//   Widget build(BuildContext context) {
//     return Text(data.name!, style: TextStyle(fontSize: 27));
//   }
// }
