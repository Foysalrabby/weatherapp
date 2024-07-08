
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/weather/model/weatherjsonapi.dart';

Widget custommidview(AsyncSnapshot<weatherjsonparseapi> snapshot){
  var forecastlist=snapshot.data?.list; //because list  is big and many list
  String ? cityname=snapshot.data?.city?.name;
  String ? countryname=snapshot.data?.city?.country;
  // return Column(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     Text("${cityname},${countryname}")
  //   ],
  //
  // );
  Container custommidview=Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text("$cityname ,$countryname",style: TextStyle(
              color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold

              ),)
             ],
        ),
      ),

  );

  return custommidview;
}