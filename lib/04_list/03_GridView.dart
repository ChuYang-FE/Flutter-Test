import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('GrideView默认构造函数'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: GrideViewDemo(),
    );
  }
}

class GrideViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: FixedCross(),
      child: MaxCross(),
    );
  }
}

// 指定列数
class FixedCross extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: .618,
        ),
        children: [
          Container(
            color: Colors.black12,
            child: ListView(
              children: [
                Text('a暗示大叔\n大婶大所大所多暗示大婶大所大所多暗示大婶大所大所多暗示大叔大婶大所大所多爱心车撒大声地'),
                Text('a暗示大叔大婶大所大所多暗示大婶大所大所多暗示大婶大所大所多暗示大叔大婶大所大所多爱心车撒大声地'),
                Text('a暗示大叔大婶大所大所多暗示大婶大所大所多暗示大婶大所大所多暗示大叔大婶大所大所多爱心车撒大声地'),
              ],
            ),
          ),
          Container(
            color: Colors.cyanAccent,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.black38,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}

// 指定子组件宽度
class MaxCross extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: .618,
        ),
        children: [
          Container(
            color: Colors.black12,
            child: ListView(
              children: [
                Text('a暗示大叔\n大婶大所大所多暗示大婶大所大所多暗示大婶大所大所多暗示大叔大婶大所大所多爱心车撒大声地'),
                Text('a暗示大叔大婶大所大所多暗示大婶大所大所多暗示大婶大所大所多暗示大叔大婶大所大所多爱心车撒大声地'),
                Text('a暗示大叔大婶大所大所多暗示大婶大所大所多暗示大婶大所大所多暗示大叔大婶大所大所多爱心车撒大声地'),
              ],
            ),
          ),
          Container(
            color: Colors.cyanAccent,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.black38,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
