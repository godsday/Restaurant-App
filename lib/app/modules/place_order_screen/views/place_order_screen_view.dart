import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/place_order_screen_controller.dart';

class PlaceOrderScreenView extends GetView<PlaceOrderScreenController> {
   PlaceOrderScreenView({Key? key}) : super(key: key);
  final orderPlaced = Get.put(PlaceOrderScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            Icon(Icons.verified,size: 245,color: Colors.green,),
            SizedBox(height: 20,),
            Text("Successfull Ordered",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),)
          ],
        ),
      ))
    );
  }
}
