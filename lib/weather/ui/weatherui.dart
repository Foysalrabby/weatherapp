import 'package:flutter/material.dart';

class Weatherui extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Extentdedweatherui();
  }


}
class Extentdedweatherui extends State<Weatherui>{
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