import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('GrideView-命名构造函数'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: GrideViewDemo2(),
    );
  }
}

// 命名构造函数：指定列数
class GrideViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        children: List.generate(
          19,
          (index) => Container(
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
  }
}

// 命名构造函数：指定宽度
class GrideViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        children: List.generate(
          19,
          (index) => Container(
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
  }
}
