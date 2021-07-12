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
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '截止目前文档所示内容，你的应用应该运行在调试 (debug) 模式中，这个模式意味着在更大的性能开销下实现了更快速的开发效率，比如热重载功能的启用，因此你可能要面临较差质量的动画效果。当你准备分析应用性能或要打包发布的时候，你可能需要 Flutter 的 profile 或者 release 构建，相关文档，',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      // width: double.infinity,
      // height: double.infinity,
      width: 300,
      height: 400,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width: 5.0,
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.green[100],
      ),
    );
  }
}
