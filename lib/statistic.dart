import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'color_constant.dart';

class Statistic_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Statistic",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Stack(
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: ColorConstant.colors[6],
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  Positioned(
                    top: 2,
                    left: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("This Month",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        Icon(Icons.arrow_drop_down_sharp,),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstant.colors[1],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total expenses",style: TextStyle(color: Colors.white),),
                        Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Positioned(
                              left: 3,
                                top: 3,
                                child: Icon(Icons.more_horiz_rounded,color: Colors.white,))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: "\$3,734",style: TextStyle(color: Colors.white,fontSize: 25)),
                        TextSpan(text: "  "),
                        TextSpan(text: "/\$4000 per month",style: TextStyle(color: Colors.grey.shade400.withOpacity(0.7),fontSize: 12))
                      ]
                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Stack(
                      children: [
                        Container(
                          height: 6,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          height: 6,
                          width: 240,
                          decoration: BoxDecoration(
                              color: ColorConstant.colors[2],
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    )
                    ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expense Breakdown",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Limit \$900 / week",style: TextStyle(fontSize: 13,color: Colors.grey.shade600),)
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            color: ColorConstant.colors[6],
                            borderRadius: BorderRadius.circular(3)
                        ),
                      ),
                      Positioned(
                        left: 9,
                        top: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Week",style: TextStyle(color: Colors.black,),),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}