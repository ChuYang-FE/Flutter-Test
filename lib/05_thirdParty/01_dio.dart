import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Dio'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: DioDemo(),
    );
  }
}

class DioDemo extends StatelessWidget {
  void getData() async {
    try {
      Response response = await Dio().get('https://httpbin.org/ip');
      String ip = response.data['origin'];
      print(ip);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Dio-getData'),
        onPressed: getData,
      ),
    );
  }
}
