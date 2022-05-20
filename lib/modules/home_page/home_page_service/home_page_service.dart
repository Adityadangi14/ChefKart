import 'dart:convert';

import 'package:chefkart/modules/home_page/home_page_model/home_page_model.dart';
import 'package:http/http.dart' as http;

class HomePageService {
  Future<dynamic> getDishes() async {
    var url = Uri.parse(
        'https://8b648f3c-b624-4ceb-9e7b-8028b7df0ad0.mock.pstmn.io/dishes/v1/');

    var response = await  http.get(url);

    if(response.statusCode ==200){

      var jsonMap = jsonDecode(response.body);
      return ChefKart.fromJson(jsonMap);
    }else{
      return '' ;
    }
  }
}
