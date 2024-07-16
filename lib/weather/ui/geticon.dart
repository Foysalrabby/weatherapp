import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Widget geticons({required String weathertype, required Color color, required double fonstsizes}) {
  switch (weathertype) {
    case "Clear":
      return Icon(FontAwesomeIcons.sun, color: color, size: fonstsizes);
    case "Cloudy":
      return Icon(FontAwesomeIcons.cloud, color: color, size: fonstsizes);
    case "Rain":
      return Icon(FontAwesomeIcons.cloudRain, color: color, size: fonstsizes);
    case "Snow":
      return Icon(FontAwesomeIcons.snowflake, color: color, size: fonstsizes);
    case "Thunderstorm":
      return Icon(FontAwesomeIcons.bolt, color: color, size: fonstsizes);
    default:
      return Icon(FontAwesomeIcons.sun, color: color, size: fonstsizes);
  }
}
