import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:myapigetx/model/Products.dart';
import 'package:myapigetx/model/apiservice.dart';

class Countcontroler extends GetxController{
  var count=0.obs;
  var plist=<Products?>[].obs;
  void increment(){
    count++;
    update();
  }


Future<void> Fetch() async {
  Apiservice apiservice=Apiservice();
  plist=await apiservice.fetchdata();


}
}