

import 'package:chefkart/modules/home_page/home_page_model/home_page_model.dart';
import 'package:chefkart/modules/home_page/home_page_service/home_page_service.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{
  var isLoading = false.obs;

  HomePageService _homePageService = HomePageService();

  ChefKart? response;
  
   @override
  void onInit() async {
    print("call onInit");
   getDishesController();
    super.onInit();
  }
  Future<dynamic> getDishesController() async{
    isLoading(true);
     response = await _homePageService.getDishes();
    isLoading(false);
    update();
    return response;
  }

}