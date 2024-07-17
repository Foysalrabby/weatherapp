
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherapp/weather/Util/weatherforcatutil.dart';
import 'package:weatherapp/weather/model/weatherjsonapi.dart';
import 'package:weatherapp/weather/ui/geticon.dart';

Widget custommidview(AsyncSnapshot<weatherjsonparseapi> snapshot){
  var forecastlist=snapshot.data?.list; //because list  is big and many list
  String ? cityname=snapshot.data?.city?.name;
  String ? countryname=snapshot.data?.city?.country;
  int ? timestamp=snapshot.data?.list?[0].dt;
  String dateformatter=Util.getDateformate(timestamp!);
  double? kelvintemp=forecastlist?[0].main?.temp;
  double? celtemp=kelvintemp!-273.3;
  double? kelvintempfell=forecastlist?[0].main?.feelsLike;
  double? celtempfll=kelvintempfell!-273.3;
  double? tempmax=forecastlist?[0].main?.tempMax;
  double celtempmax=tempmax!-275.3;
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
                fontSize: 25,
                fontWeight: FontWeight.bold

              ),),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("$dateformatter",style: TextStyle(
                   color: Colors.black87,
                   fontSize:15,

                 ),),
               ),
               SizedBox(height: 10,),
               // Icon(Icons.wb_sunny,color: Colors.red,size: 160,),

               geticons(
                 weathertype: "${forecastlist?[0].weather![0].main}", color: Colors.pinkAccent,
                 fonstsizes: 160,),
               // geticons(weathertype: "${forecastlist?[0].weather![0].main}", color: Colors.pinkAccent, fonstsizes: 160),
               Padding(
                   padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("${celtemp.toStringAsFixed(2)} °C",style: TextStyle(
                       color: Colors.black87,
                       fontSize: 15,
                       fontWeight: FontWeight.w500,

                     ),),
                     SizedBox(width: 10,),
                     Flexible(
                       child: Text("${forecastlist?[0].weather?[0].description}",style: TextStyle(
                         color: Colors.black87,
                         fontSize: 15,
                         fontWeight: FontWeight.w500,
                       ),
                       overflow: TextOverflow.ellipsis,),

                     )
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("${celtempfll.toStringAsFixed(2)}°C"),

                         //Icon(FontAwesomeIcons.temperatureArrowUp,color: Colors.orangeAccent,),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Feel like",style: TextStyle(
                             color:  Colors.orangeAccent,
                             fontSize: 18
                           ),),
                         ),
                       ],
                     ),
                   ),
                     Padding(
                         padding: EdgeInsets.all(8.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("${forecastlist?[0].main?.humidity} %"),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(FontAwesomeIcons.hotTub,color: Colors.orangeAccent,),
                         )
                         ],
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("${celtempmax.toStringAsFixed(2)}°C"),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Icon(FontAwesomeIcons.temperatureHigh,color: Colors.orangeAccent,),
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
               )
             ],

        ),



      ),

  );

  return custommidview;
}