import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Image'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/doge.jpg',
          width: 300,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://flutter.cn/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png',
          repeat: ImageRepeat.noRepeat,
        ),
      ],
    );
  }
}
