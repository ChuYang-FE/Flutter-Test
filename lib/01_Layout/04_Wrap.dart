import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Wrap'),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  final List<String> _list = ['曹操', '司马懿', '曹洪', '张辽', '许褚', '曹丕'];
  List<Widget> _weiGuo() {
    return _list
        .map((e) => Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: const Text('魏'),
              ),
              label: Text(e),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 10,
          children: _weiGuo(),
        ),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceAround,
          children: [
            ..._weiGuo(),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: const Text('SG'),
              ),
              label: Text('哈哈哈哈'),
            )
          ],
        )
      ],
    );
  }
}
