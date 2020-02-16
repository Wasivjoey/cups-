import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget{

  @override 
  _HomeState createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
    int _currentIndex =0;
    Widget callPage(int _currentIndex){
      
    }     

    void ButtonClick()
    {
      print("yes");
    }   
        @override 
        Widget build(BuildContext context) {
          return Scaffold( appBar: AppBar(
            //title: Text(Widget.title),
          ),
          body: Center(
            child: RaisedButton(
              onPressed: ButtonClick,
              child: Text("Guest"),
              color: Colors.amber,
              textColor: Colors.white,

              ),),

          );
        }
  }*/
 
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                
                 
            SizedBox(height: 40,),
           Center(
              child: Container(
                width: 120,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue[800]
                ),
                child: Center(child: Text("Login", style: TextStyle(color: Colors.white.withOpacity(.7)),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}