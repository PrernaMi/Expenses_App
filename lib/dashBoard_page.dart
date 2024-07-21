import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset("assets/images/app_logo.png"),
              Text("Monety",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 280,),
              Icon(Icons.search,color: Colors.black54,size: 30,),
            ],
          ),
        )
      ),
    );
  }

}