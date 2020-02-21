import 'package:flutter/material.dart';

class MyNavigator{
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
   
  }
   static void goToMenu(BuildContext context) {
    Navigator.pushNamed(context, "/menu_widget");
   
  }
}