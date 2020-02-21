/*
*  snacks_widget.dart
*  Menu
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:menu/values/values.dart';


class SnacksWidget extends StatelessWidget {
  
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
              margin: EdgeInsets.only(left: 37, top: 81),
              child: Text(
                "Snacks",
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
              margin: EdgeInsets.only(left: 37, top: 48),
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
              margin: EdgeInsets.only(left: 23, bottom: 35),
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