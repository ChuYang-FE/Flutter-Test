import 'package:flutter/material.dart';

class UnkownPage extends StatelessWidget {
  const UnkownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404页面'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('404——这是未知页面'),
        ),
      ),
    );
  }
}
