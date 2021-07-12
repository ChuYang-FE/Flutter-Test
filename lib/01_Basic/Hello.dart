import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('首页'),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: HelloWorld(),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello World!!!!'),
      )
    );
  }
}