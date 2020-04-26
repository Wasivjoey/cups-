import 'package:cups/menu_widget/menu_widget.dart';
import 'package:cups/utils/Sqlite/db_page.dart';
import 'package:flutter/material.dart';
import 'package:cups/view/splash_pg.dart';
import 'package:cups/view/Home.dart';
import 'package:cups/view/login.dart';


var routes = <String , WidgetBuilder>{
  "/home":(BuildContext context)=> Home(),
  "/menu":(BuildContext context)=> MenuWidget(),
  "/login":(BuildContext context)=> LoginScreen(),
 // "/signup":(BuildContext context)=>SignupScreen(),
  };
  
      
void main() =>  
 runApp(
    MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.amber, accentColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes)
      );
      
      
 

 