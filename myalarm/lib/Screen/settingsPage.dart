import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myalarm/model/staticmodel.dart';
import 'package:myalarm/widgets/clock.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'dart:math' as math;

import '../main.dart';
import '../widgets/alarm.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}
class colors{
  late Color color1;
  late Color color2;
}
List<colors> colorList=List.empty(growable: true);
void randomColor(){
  for(int i=0;i<10;i++){
  Color randomcolor1=Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  Color randomcolor2=Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  colors color=colors();
  color.color1=randomcolor1;
  color.color2=randomcolor2;
  colorList.add(color);
  }
  
}
class _SettingsPageState extends State<SettingsPage> {
  
  @override
  Widget build(BuildContext context) {
    randomColor();
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      
          color: HexColor("1D1D23"),
          child: SafeArea(child: Container(
              color: Colors.white,
        child: ListView.builder(
            
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
             
              return 
             
             GestureDetector(
              onTap: () { QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  text: 'Succesfully  to completed change theme',
                  
                );
                   StaticClass.color1=colorList[index].color1;
                StaticClass.color2=colorList[index].color2;
             
              },
              child:  Container(
        color: HexColor("1D1D23"),

                margin: EdgeInsets.only(bottom: 5),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AlarmWidget(color1:colorList[index].color1,color2: colorList[index].color2,),
                  ClockWidget(color1: colorList[index].color1,color2: colorList[index].color2,)
                ],
              ),),);
            }),
      ),),

    );
  }
}