import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:myalarm/main.dart';
import 'package:myalarm/model/staticmodel.dart';

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
              return Container(
                height: 177,
                width: 169,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: HexColor("34344A"),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 31,top: 15),
                          child: const Text(
                            "Etiket",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                     "15:30",
                      style: TextStyle(
                          color: Colors.grey,
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
            }),
      ),
    );
  }
}
