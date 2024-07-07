import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:weatherapp/weather/Util/weatherforcatutil.dart';
import 'package:weatherapp/weather/model/weatherjsonapi.dart';


class Network{
Future<weatherjsonparseapi> getfetchalldata({required String cityName})async{
    //final String url="https://api.openweathermap.org/data/2.5/forecast?q="+cityName+"&appid="+Util.appId+"";
  final String url="https://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid=${Util.appId}";
  final response=await http.get(Uri.parse(url));
   print("url:${Uri.parse(url)}");
   if(response.statusCode == 200){
   return weatherjsonparseapi.fromJson(json.decode(response.body));
   }else{
    throw Exception("failed to data load");
   }
}

}