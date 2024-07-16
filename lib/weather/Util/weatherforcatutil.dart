import 'package:intl/intl.dart';

class Util{
 static String appId="eca29b148ee140c84c80b92b2cf067c1";




 static String getDateformate(int timestamp){
// Convert Unix timestamp to DateTime
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  // Format the date
  String formattedDate = DateFormat('EEEE, MMM d, y').format(date);
  return formattedDate;
 }
}