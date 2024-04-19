import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/models/NewsResponse.dart';
import 'package:newsapp/models/source_response.dart';
import 'package:newsapp/shared/compontent/constant.dart';

class ApiManager {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=86bbcfb9738e4946b281231f8b349a37
  static Future<SourceResponse>getSources(String category) async{
    Uri url=Uri.https(Constant.baseurl,"/v2/top-headlines/sources",{
      "apiKey":"86bbcfb9738e4946b281231f8b349a37","category":category
    });
    http.Response response=await http.get(url);
    Map<String,dynamic> json= jsonDecode(response.body);
     return SourceResponse.fromJson(json);


  }
  static Future<NewsResponse> getNewsData(String sourceId)async{
    Uri url=Uri.https(Constant.baseurl,"/v2/everything",{
      "sources":sourceId
    });
    var response=await http.get(url,headers: {
      "X-api-Key":"86bbcfb9738e4946b281231f8b349a37"
    });
    var json= jsonDecode(response.body);
    return NewsResponse.fromJson(json);


  }

}
