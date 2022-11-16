// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:myalarm/main.dart';
import 'package:myalarm/model/staticmodel.dart';
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}


class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    StaticClass.title="Clock";
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          color: HexColor("1D1D23"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
           
                        Row(children: [
                           Container(
                          margin: EdgeInsets.only(top: 25,left: 16),
                          child: 
                          Text(
                            
                          DateFormat('HH:mm').format(DateTime.now()),
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                          ),),),
                        ],),
                           Row(children: [Container(
                          margin: EdgeInsets.only(top: 10,left: 16,bottom: 20),
                          child: 
                          Text(
                            
                          "Çarşamba, Kasım 16",
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),),],),
                    
        Expanded(
          
            child:  ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (BuildContext ctxt, int index) {
                return  Container(
                  margin: EdgeInsets.only(bottom: 20,left: 15,right: 15),
                  height:90,width: MediaQuery.of(context).size.width,decoration: BoxDecoration(
                    color: HexColor("#34344A"),
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
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),),
                          Container(
                        width: 100,

                        margin: EdgeInsets.only(left: 24),
                            
                            child:  Text(
                            
                          "-6h"
                          ,
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),),
                    ],),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child:  Text(
                            
                          DateFormat('HH:mm').format(DateTime.now()),
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                          ),),)

                  ]),
                  );
              },
            ),
          
        ),
       
      ],
    )
                         
          
        ),
      ),
    );
  }
}
