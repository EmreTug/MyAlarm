import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:myalarm/main.dart';
import 'package:myalarm/model/staticmodel.dart';

import '../widgets/alarm.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    StaticClass.title="Alarm";
    return SafeArea(
      child: Container(
        color: HexColor("1D1D23"),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: (MediaQuery.of(context).size.width ) / 2,
                crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
            itemCount: 11,
            itemBuilder: (BuildContext ctx, index) {
              return 
              AlarmWidget(color1: StaticClass.color1,color2: StaticClass.color2,);
            }),
      ),
    );
  }
}

