
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
        @override 
        Widget build(BuildContext context) {
          return Scaffold(
            appBar : AppBar( 
              title: Text('Semantics App'),
            ),
            body: callPage(_currentIndex), 
            
            
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index){
                setState(() {
                  _currentIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              items:[
                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  title: Text('Operational'),
                ),
    
                BottomNavigationBarItem(
                  icon: Icon(Icons.stars),
                  title: Text('Denotational'),
                ),
    
                BottomNavigationBarItem(
                  icon: Icon(Icons.brightness_auto),
                  title: Text('Axiomatic'),
                ),
    
                BottomNavigationBarItem(
                  icon: Icon(Icons.portrait),
                  title: Text('About'),
                ),
    
                 BottomNavigationBarItem(
                  icon: Icon(Icons.close),
                  title: Text('Exit'),
                ),
              ] ,
              
            ),
          );
        }
    
      }
    
    mixin Final {
}
  