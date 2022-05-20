

import 'package:chefkart/modules/detail_page/detail_page.dart';
import 'package:chefkart/modules/detail_page/detail_page_model/detail_page_model.dart';
import 'package:chefkart/modules/detail_page/detail_page_service/detail_page_service.dart';
import 'package:chefkart/modules/home_page/home_page_model/home_page_model.dart';
import 'package:get/get.dart';

class DetailPageController extends GetxController{
  var isLoading = false.obs;

  DetailPageService _detailPageService =DetailPageService();

  late DetailPageModel response;
  
   @override
  void onInit() async {
    print("call onInit");
   getDetailController();
    super.onInit();
  }
  Future<dynamic> getDetailController() async{
    isLoading(true);
     response = await _detailPageService.getDetail();
    isLoading(false);
    update();
    return response;
  }

}