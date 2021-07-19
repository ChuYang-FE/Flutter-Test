import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('StatefulWidget'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({Key? key}) : super(key: key);

  @override
  _MyStateState createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _number = 0;

  void _increase() {
    setState(() {
      _number++;
    });
  }

  void _decrease() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _decrease,
            child: Icon(Icons.exposure_minus_1),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('number: $_number'),
          ),
          ElevatedButton(
            onPressed: _increase,
            child: Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
