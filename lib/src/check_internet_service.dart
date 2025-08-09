import 'dart:convert';

import 'package:http/http.dart' as http;







checkInternet({String? url,}){

  if(url != null){

  }

}







Future<Map<String,dynamic>?> checkUrl(String url,String method)async{
  http.Response response = method == "Post"
      ? await http.post(Uri.parse(url))
      : await http.get(Uri.parse(url));


  if(response.statusCode < 300){
    return jsonDecode(response.body);
  }else{
    return null;
  }

}