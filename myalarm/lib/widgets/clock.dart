import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({
    required this.color1, required this.color2,
    super.key,
  });
final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20,left: 15,right: 15),
      height:90,width: MediaQuery.of(context).size.width,decoration: BoxDecoration(
          color: color1==null ? HexColor("34344A"):color1,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          
          children: [
          Container(
            width: 100,
            margin: EdgeInsets.only(top: 27,bottom: 5,left: 24),
            child:  Text(
                
             "New York",
              style: TextStyle(
          color: color2==null ?Colors.white:color2,
                fontSize: 14,
              ),),),
              Container(
            width: 100,

            margin: EdgeInsets.only(left: 24),
                
                child:  Text(
                
              "-6h"
              ,
              style: TextStyle(
          color: color2==null ?Colors.white:color2,
                fontSize: 14,
              ),),),
        ],),
        Container(
          margin: EdgeInsets.only(right: 25),
          child:  Text(
                
              DateFormat('HH:mm').format(DateTime.now()),
              style: TextStyle(
          color: color2==null ?Colors.white:color2,
                fontSize: 60,
              ),),)

      ]),
      );
  }
}
