import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Button'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Wrap(
        children: [
          TextButton(
            onPressed: () => print('点击了 TextButton'),
            child: Text('TextButton'),
          ),
          ElevatedButton(
            onPressed: () => print('点击了 ElevatedButton'),
            child: Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () => print('点击了 OutlinedButton'),
            child: Text('OutlinedButton'),
          ),
          Divider(),
          ElevatedButton(
            onPressed: () => print('2-点击了 ElevatedButton'),
            child: Text('2-ElevatedButton'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              backgroundColor: MaterialStateProperty.all(Colors.pink),
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ),
          IconButton(
            onPressed: () => print('2-点击了 ElevatedButton'),
            icon: Icon(Icons.access_alarm),
            tooltip: '什么？',
            splashColor: Colors.lightGreen,
          ),
          Divider(),
          TextButton.icon(
            onPressed: () => print('点击了 TextButton'),
            icon: Icon(Icons.mail_outline_rounded),
            label: Text('label'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton.icon(
              onPressed: () => print('点击了 ElevatedButton'),
              icon: Icon(Icons.access_time_rounded),
              label: Text('label'),
              style: ButtonStyle(),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () => print('点击了 OutlinedButton'),
            icon: Icon(Icons.access_time_rounded),
            label: Text('label'),
          ),
          Divider(),
          BackButton(
            onPressed: () => print('Back!'),
          ),
          CloseButton(
            onPressed: () => print('Close!'),
          ),
          FloatingActionButton(
            onPressed: () => print('float!'),
            tooltip: '浮动按钮',
            child: Icon(Icons.add_a_photo),
          )
        ],
      ),
    );
  }
}
