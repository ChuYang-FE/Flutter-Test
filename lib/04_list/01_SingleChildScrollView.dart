import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('SingleScrollView'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 验证水平滚动
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ElevatedButton(onPressed: () => null, child: Text('星期1')),
              ElevatedButton(onPressed: () => null, child: Text('星期2')),
              ElevatedButton(onPressed: () => null, child: Text('星期3')),
              ElevatedButton(onPressed: () => null, child: Text('星期3')),
              ElevatedButton(onPressed: () => null, child: Text('星期3')),
              ElevatedButton(onPressed: () => null, child: Text('星期3')),
              ElevatedButton(onPressed: () => null, child: Text('星期3')),
              ElevatedButton(onPressed: () => null, child: Text('星期99')),
            ],
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
                50,
                (index) => ElevatedButton(
                    onPressed: () => null, child: Text('星期$index'))),
          ),
        ),
      ],
    );
  }
}
