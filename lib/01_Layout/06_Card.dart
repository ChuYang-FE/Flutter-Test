import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Stack'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
              width: 2,
              color: Colors.blue.shade100,
            ),
          ),
          shadowColor: Colors.blueAccent,
          elevation: 20,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text('董事长'),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '手机: 13123123123',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  '地址: XXXXXXX',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(20.0),
          // shape: ,
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                title: Text(
                  '李四',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text('CEO'),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '手机: 13123123123',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  '地址: XXXXXXX',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(20.0),
          // shape: ,
        ),
      ],
    );
  }
}
