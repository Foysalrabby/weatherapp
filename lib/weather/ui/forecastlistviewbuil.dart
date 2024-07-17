import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/weather/Util/weatherforcatutil.dart';
import '../model/weatherjsonapi.dart';

Widget Forecastlistbuil(AsyncSnapshot<weatherjsonparseapi> snapshot,int index){
  var forecastlist=snapshot.data?.list;
  int ? timetamp= snapshot.data?.list?[index].dt;
  String daybring="";
  String dateformamte=Util.getDateformate(timetamp!);
    daybring=dateformamte.split(",")[0];
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    ],

  );
}