import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/controllers/home_controller.dart';
import '../home/data_model.dart';



class CustomExpansionTile extends StatelessWidget {
  CustomExpansionTile({
    Key? key,
    required this.tileHeading,
    required this.iList,
  }) : super(key: key);

  final controller = Get.put(HomeController());
  final String tileHeading;
  final List<Category> iList;
  int total = 0;
  // bool visible=false;

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
        
          controller.besrtseller(data);
      

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
                        Visibility(
                          visible: controller.visible,
                          child: const Text(
                              "best seller",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                        )
                       ,
                    const SizedBox(
                      width: 100,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
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
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          );
        }));
  }
}