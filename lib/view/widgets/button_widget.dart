import 'dart:ui';

import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttomwidget extends StatelessWidget {
  final String title;
  final Widget? route;
  final Color? textColor;
  final Color? backgroundColor;
  final Opacity? opacity;
  final IconData  icons; 
  final Color? iconcolor;
 
  

  const buttomwidget({
    required this.title,
    this.route,
    this.textColor,
    this.backgroundColor,
    this.opacity,
    required this.icons,
    this.iconcolor,
   

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route!,
            ),
          );
        } else {
          print("No route to go");
        }
      },
      child: Container(
        margin: EdgeInsets.all(20),
        
        width: BluDimensions.width(context),
        height: 100,
        decoration: BoxDecoration(
          
          color: backgroundColor ?? BluColor.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
            title,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ), SizedBox(width: 8,),
          Icon(
            icons,
            size: 30,
            color:textColor,
           ),
          

          ],
        )
      ),
    );
  }
}
      
  
  