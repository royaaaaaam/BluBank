import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

class Contactmodalwidget extends StatelessWidget {
  const Contactmodalwidget({Key? key}) : super(key: key);

  blulist({String title = "", IconData? greyicon}) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      height: 50,
      child: Row(
        children: [
          Spacer(),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 20),
          Container(
            child: Icon(greyicon, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              width: BluDimensions.width(context),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 22),
                        Center(
                          child: Text(
                            "بلولاین",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "همیشه به وقت همه جا",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                        Divider(),
                        blulist(
                          title: "گفتگو",
                          greyicon: Icons.question_answer_outlined,
                        ),
                        Divider(),
                        blulist(
                          title: "تماس",
                          greyicon: Icons.call_outlined,
                        ),
                        Divider(),
                        blulist(
                          title: "سوالات متداول",
                          greyicon: Icons.quiz_outlined,
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "انصراف",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: BluColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        color: BluColor.primaryColor,
        width: 50,
        height: 50,
      ),
    );
  }
}