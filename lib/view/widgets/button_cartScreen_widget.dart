import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

class Buttoncartscreenwidget extends StatelessWidget {
  final String title;
  final String imgpath;

  const Buttoncartscreenwidget({
    required this.title,
    required this.imgpath,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    imgpath,
                    width: 40,
                    height: 40,
                  ),
                ),
                Container(
                  height: 30,
                  child: Center(
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: BluColor.primaryColor)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}