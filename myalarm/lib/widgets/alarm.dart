import 'dart:io';

import 'package:flutter/material.dart';

import '../main.dart';

class AlarmWidget extends StatelessWidget {
  const AlarmWidget({
    required this.color1, required this.color2,
    super.key,
  });
final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: 169,
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color1==null ? HexColor("34344A"):color1,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 31,top: 15),
                child:  Text(
                  "Etiket",
                  style:  TextStyle(
          color: color2==null ? Colors.white:color2,
                    
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
          Text(
           "15:30",
            style: TextStyle(
          color: color2==null ? Colors.white:color2,
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("P"),
              Text("S"),
              Text("Ç"),
              Text("P"),
              Text("C"),
              Text("C"),
              Text("P"),
            ],
          ),
         Row(
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Container(
            margin: EdgeInsets.only(right: 25),
            child: Switch(
            
            value: true,
            onChanged: (value) {},
          ),)
         ],)
        ],
      ),
    );
  }
}
