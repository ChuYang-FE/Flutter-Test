import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('ColumnRow'),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.access_alarm_rounded,
            size: 50,
          ),
          Icon(
            Icons.cabin_outlined,
            size: 50,
          ),
          Icon(
            Icons.cable_rounded,
            size: 50,
          ),
          Icon(
            Icons.qr_code,
            size: 50,
          ),
          Row(
            children: [
              Icon(
                Icons.ac_unit,
                size: 50,
              ),
              Icon(
                Icons.baby_changing_station,
                size: 50,
              ),
              Icon(
                Icons.access_alarms,
                size: 50,
              ),
              Icon(
                Icons.tab_sharp,
                size: 50,
              ),
            ],
          )
        ],
      ),
      // width: double.infinity,
      // height: double.infinity,
      // width: 300,
      // height: 400,
      // padding: EdgeInsets.all(20),
      // margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
      // alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     width: 5.0,
      //     color: Colors.blue,
      //   ),
      //   borderRadius: BorderRadius.all(Radius.circular(30)),
      //   color: Colors.green[100],
      // ),
    );
  }
}
