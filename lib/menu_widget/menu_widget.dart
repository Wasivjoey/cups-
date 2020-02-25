/*
*  menu_widget.dart
*  Menu
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import './../values/values.dart';
import 'package:cups/utils/cups_Nav/Nav_pg.dart';


class MenuWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 85, 85),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              margin: EdgeInsets.only(left: 37, top: 58),
               
              child: Text(
                "Menu",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.w700,
                  fontSize: 60,
                ),
              ),
            
            ),
            Align(
  
              alignment: Alignment.topCenter,
              child: Container(
                width: 144,
                height: 48,
                margin: EdgeInsets.only(top: 144),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                  borderRadius: Radii.k5pxRadius,
                ),
                child: FlatButton(onPressed: ()=>MyNavigator.goToSnacks(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Snacks",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              ),
              ),
            
      
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 144,
                height: 48,
                margin: EdgeInsets.only(top: 96),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                  borderRadius: Radii.k5pxRadius,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 17),
                      child: Text(
                        "Beverage",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 144,
              height: 61,
              margin: EdgeInsets.only(left: 113, top: 96),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        borderRadius: Radii.k5pxRadius,
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 13,
                    right: 8,
                    child: Text(
                      "Daily Suprise\n",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 144,
              height: 48,
              margin: EdgeInsets.only(left: 23, bottom: 29),
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: Radii.k5pxRadius,
              ),
              child: FlatButton(onPressed: ()=>MyNavigator.goToHome(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Home",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}