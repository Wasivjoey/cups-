/*
*  daily_widget.dart
*  Menu
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:menu/values/values.dart';


class DailyWidget extends StatelessWidget {
  
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
              margin: EdgeInsets.only(left: 15, top: 67),
              child: Text(
                "Daily Suprise",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
            ),
            Container(
              width: 144,
              height: 48,
              margin: EdgeInsets.only(left: 15, top: 57),
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: Radii.k5pxRadius,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Search",
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
            Spacer(),
            Container(
              width: 144,
              height: 48,
              margin: EdgeInsets.only(left: 16, bottom: 19),
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: Radii.k5pxRadius,
              ),
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
            ),
          ],
        ),
      ),
    );
  }
}