import 'package:flutter/material.dart';
import 'package:cups/Home.dart';
import 'package:cups/splash_pg.dart';


var routes = <String , WidgetBuilder>{
  "/home":(BuildContext context)=> Home(),
  };

void main() =>  
 runApp(
    MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.amber, accentColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes));
      
      
 

 