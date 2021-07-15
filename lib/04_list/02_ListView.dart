import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('ListView'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListViewBasic(),
        ListViewHorizontal(),
        ListViewBuilderDemo(),
        ListViewSeperatedDemo(),
      ],
    );
  }
}

class ListViewBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(border: Border.all()),
      child: ListView(
        scrollDirection: Axis.vertical,
        // physics: ScrollPhysics(),
        children: [
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text('张三'),
            subtitle: Text('总经理'),
            trailing: Icon(Icons.arrow_right_alt_rounded),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text('张三'),
            subtitle: Text('总经理'),
            trailing: Icon(Icons.arrow_right_alt_rounded),
          ),
          ListTile(
            leading: Icon(Icons.baby_changing_station),
            title: Text('张三'),
            subtitle: Text('总经理'),
            trailing: Icon(Icons.arrow_right_alt_rounded),
            selected: true,
          ),
          ListTile(
            leading: Icon(Icons.nat_outlined),
            title: Text('张三'),
            subtitle: Text('总经理'),
            trailing: Icon(Icons.arrow_right_alt_rounded),
          ),
          ListTile(
            leading: Icon(Icons.kayaking),
            title: Text('张三'),
            subtitle: Text('总经理'),
            trailing: Icon(Icons.arrow_right_alt_rounded),
          ),
        ],
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(border: Border.all()),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 130,
            color: Colors.amberAccent,
          ),
          Container(
            width: 130,
            color: Colors.greenAccent,
          ),
          Container(
            width: 130,
            color: Colors.blueAccent,
          ),
          Container(
            width: 130,
            color: Colors.black38,
          ),
          Container(
            width: 130,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  final List<Widget> users = List<Widget>.generate(20,
      (index) => ElevatedButton(onPressed: () {}, child: Text('名字：$index')));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: users.length,
        itemExtent: 30,
        itemBuilder: (context, index) => users[index],
      ),
    );
  }
}

class ListViewSeperatedDemo extends StatelessWidget {
  final List<Widget> users = List<Widget>.generate(
    20,
    (index) => ListTile(
      leading: Icon(Icons.accessible_forward),
      title: Text('William$index'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    const Widget dividerOdd = Divider(
      color: Colors.deepOrange,
      thickness: 1,
    );

    const Widget dividerEven = Divider(
      color: Colors.greenAccent,
      thickness: 2,
    );

    return Container(
      height: 200,
      child: ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) => users[index],

        // 分隔线构造器
        separatorBuilder: (context, index) =>
            index % 2 == 0 ? dividerEven : dividerOdd,
      ),
    );
  }
}
