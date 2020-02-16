import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cups/cups_Nav/Nav_pg.dart';




class SplashScreen extends StatefulWidget{
   @override
   _SplashScreenState createState() => _SplashScreenState();
 }

 class _SplashScreenState extends State <SplashScreen> {
   @override 
   void initState(){
     super.initState();
     Timer(Duration(seconds:5),()=> MyNavigator.goToHome(context));
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
         fit: StackFit.expand,
         children: <Widget>[
           Container(
             decoration: BoxDecoration(color: Colors.amberAccent)
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children:<Widget>[
               Expanded(
                 flex : 2,
                 child:Container(
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children: <Widget> [
                       CircleAvatar(backgroundColor:Colors.white,
                       radius: 50.0,
                       child: Icon(
                         Icons.local_cafe,
                         color: Colors.amberAccent,
                         size: 50.0,
                         ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10.0),
                         ),
                         Text(
                           "CUPS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:  24.0,
                              fontWeight: FontWeight.bold
                            ),
                         )
                     ]
                      
                   ),

                 )
                
              
              ),
              Expanded(flex:  1 ,
              child: Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("For all your coffee needs ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    )
                    ),

                ],


              ))

             ]
           )
         ],

       ),
       );
   }
 }

