
import 'package:get/get.dart';
import 'package:resto/app/data/menu.dart';

import '../data_model.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
  
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

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
    // print(data.cat1![1].count);
  }


// String? cdata;
//     int count =0;
//   itemCount(){

  

  //  final data1 = Data.fromJson(menuItems);
// print("${data.cat1![1].count}");
  //   cdata=data.cat1![index].name;
  //   if( cdata==data.cat1![index].name){
  // data.cat1![index].count=count++;
   
   
  //   }
    //   print( data.cat1![0].count );
    // print( data.cat1![1].count );
  
// update();


//   }
int? amount;
  incrementButton(data){
    data.count=data.count!+1;

    if(data.count>0){
      amount =data.count*data.price;
    }
    print(amount);
    update();
  }

  decrementButton(data){
    if(data.count>0){
     data.count=data.count!-1;
      amount =data.count*data.price;
    }
   
    print(amount);
    update();
  }
}
