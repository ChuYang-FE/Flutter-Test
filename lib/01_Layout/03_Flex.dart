import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Flex'),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.blueGrey,
                height: 50,
                width: 50,
              ),
              Expanded(
                child: Container(
                  color: Colors.lightGreen,
                  height: 50,
                ),
              )
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink,
                  height: 50,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.black26,
                  height: 50,
                ),
                flex: 2,
              )
            ],
          ),
          Container(
              height: 100,
              margin: EdgeInsets.all(50),
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.lightGreenAccent,
                      height: 50,
                    ),
                    flex: 1,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueAccent,
                      height: 50,
                    ),
                    flex: 2,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
