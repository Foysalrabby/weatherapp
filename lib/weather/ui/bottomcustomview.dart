
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/weatherjsonapi.dart';
import 'forecastlistviewbuil.dart';
Widget bottomcustomview(AsyncSnapshot <weatherjsonparseapi> snapshot,BuildContext context){
var forecastlist=snapshot.data?.list;
return Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text("5 Day With 3 Hours Forcast",style: TextStyle(
      color: Colors.black54,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),),
    Container(
      height: 170,
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
      child: ListView.separated(
         itemCount: forecastlist!.length,
          separatorBuilder: (context,index)=>SizedBox(width: 8,),
          itemBuilder: (context,index)=>ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              width: MediaQuery.of(context).size.width/2.7,
              height: 160,
              child: Forecastlistbuil(snapshot,index),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.white70

                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                )
              ),
            ),
            
          ),
          ),
    )
  ],
);


}