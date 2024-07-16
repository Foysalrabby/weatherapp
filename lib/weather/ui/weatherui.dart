import 'package:flutter/material.dart';
import 'package:weatherapp/weather/model/weatherjsonapi.dart';
import 'package:weatherapp/weather/network/network.dart';
import 'package:weatherapp/weather/ui/bottomcustomview.dart';
import 'package:weatherapp/weather/ui/custommidview.dart';



class Weatherui extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Extentdedweatherui();
  }


}
class Extentdedweatherui extends State<Weatherui>{
  late Future <weatherjsonparseapi> weatherdata;
   String cityname="rajshahi";

   @override
  void initState() {
    super.initState();
    //weatherdata=Network().getfetchalldata(cityName: cityname);
    weatherdata=getweathercityname(cityName:cityname);
    // weatherdata.then((weather) => {
    //   print(weather.list?[0].weather?[0].description)
    // });

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Welcome Weather App "),
       backgroundColor:Colors.blueGrey
     ),
     body:Container(
       child: Padding(
         padding: EdgeInsets.all(8.0),
         child: ListView(
           children: <Widget> [
             textFieldview(),
            Container(
              child: FutureBuilder<weatherjsonparseapi>(
                future: weatherdata,
                builder: (BuildContext context,AsyncSnapshot<weatherjsonparseapi>snapshot){
                    if(snapshot.hasData){
                      return Column(
                        children:<Widget> [
                          custommidview(snapshot),
                          bottomcustomview(snapshot);
                        ],
                      );
                    }else{
                      return Container(
                        child: CircularProgressIndicator(),
                        ) ;
                    }

                },

              ),
            )
           ],

         ),
       ),
     ),
   );
  }

  Widget textFieldview () {
     return Container (
       child: TextField(
         decoration: InputDecoration(
           hintText: "Enter The City Name",
           prefixIcon: Icon(Icons.search),
           border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(10.0),


           ),
          contentPadding: EdgeInsets.all(6.0),
         ),
         onSubmitted: (value){
           setState(() {
             cityname=value;
             //weatherdata=new Network().getfetchalldata(cityName: cityname);
             weatherdata=getweathercityname(cityName:cityname);
           });

         },
       ),
     );

  }

  Future<weatherjsonparseapi> getweathercityname({ required String cityName}) =>new Network().getfetchalldata(cityName: cityname);





}