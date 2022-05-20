import 'dart:convert';


import 'package:chefkart/modules/detail_page/detail_page_model/detail_page_model.dart';
import 'package:http/http.dart' as http;

class DetailPageService {
  Future<dynamic> getDetail() async {
    var url = Uri.parse(
        'https://8b648f3c-b624-4ceb-9e7b-8028b7df0ad0.mock.pstmn.io/dishes/v1/1');

    var response = await  http.get(url);

    if(response.statusCode ==200){

      var jsonMap = jsonDecode(response.body);
      return DetailPageModel.fromJson(jsonMap);
    }else{
      return '' ;
    }
  }
}
