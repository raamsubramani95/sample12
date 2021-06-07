import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sampleapp/models/Ranking_object.dart';
import 'package:sampleapp/splash_screen.dart';
import 'package:sampleapp/utils/constants.dart';
import 'screens/screen-1.dart';


void main() {
  runApp(Mainapp(
  ));
}

class Mainapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        SCREEN1: (context) => Screen1(),
      },
    );
  }
}