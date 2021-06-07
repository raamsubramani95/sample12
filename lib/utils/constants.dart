
import 'package:flutter/material.dart';
import 'package:sampleapp/models/Ranking_object.dart';


String API_URL="";
TextStyle APP_STYLE = TextStyle(color: Colors.white);
String SCREEN1 = '/Screen1';
List<Ranking> rankinglist=[];
List<Game> gamelist=[];
List<Pricedata> pricedatalist=[];

class MyColors {
  static const Color primaryColor = Color.fromRGBO(0, 70, 147,1);
  static const Color yellow = Colors.yellow;
  static const Color blue = Colors.blue;
  static const Color white = Colors.white;
  static const List<Color> colors = [Color.fromRGBO(144, 144, 144,1),Color.fromRGBO(144, 144, 144,1), Color.fromRGBO(78, 60, 10,1),
  Color.fromRGBO(0, 102, 211,1), Color.fromRGBO(0, 102, 211,1)];
  static const Color yellowcard = Color.fromRGBO(234, 174, 0,1);
  static const Color cardbg = Color.fromRGBO(226,226,226,1);
  static const Color primaryColorLight = Color(0xFF6252A7);

}