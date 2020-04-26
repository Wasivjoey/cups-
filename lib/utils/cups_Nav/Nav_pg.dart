import 'package:flutter/material.dart';

class MyNavigator{
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
   
  }
   static void goToMenu(BuildContext context) {
    Navigator.pushNamed(context, "/menu");
   
  }

  static void goToDB(BuildContext context) {
    Navigator.pushNamed(context, "/manager");
   
  }
  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
   
  }
  static void goToSignup(BuildContext context) {
    Navigator.pushNamed(context, "/signup");
   
  }
}