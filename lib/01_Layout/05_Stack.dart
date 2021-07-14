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
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/45116321?v=4',
            ),
            radius: 200,
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'Github头像',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            top: 300,
            right: 50,
          ),
          Text('Hello'),
        ],
      ),
    );
  }
}
