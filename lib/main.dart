import 'package:flutter/material.dart';

//import 'Home.dart';


void main() =>  
 runApp(
    MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.amber, accentColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
 ));

 class SplashScreen extends StatefulWidget{
   @override
   _SplashScreenState createState() => _SplashScreenState();
 }

 class _SplashScreenState extends State <SplashScreen> {
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
                       child: Icon(Icons.leaf))
                     ]
                      
                   ),

                 )
                
              ,))
             ]
           )
         ],

       ),
       );
   }
 }

