import 'package:flutter/material.dart';
import 'package:weatherapp/weather/model/weatherjsonapi.dart';
import 'package:weatherapp/weather/network/network.dart';



class Weatherui extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Extentdedweatherui();
  }


}
class Extentdedweatherui extends State<Weatherui>{
  late Future <weatherjsonparseapi> weatherdata;
   String cityname="London";

   @override
  void initState() {
    super.initState();
    weatherdata=Network().getfetchalldata(cityName: cityname);
    weatherdata.then((weather) => {
      print(weather.city?.country)
    });

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Welcome Weather App "),
       backgroundColor:Colors.blueGrey
     ),
     body: Center(),
   );
  }



}