import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('DataTable'),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.search),
        ],
      ),
      body: UserList(),
    );
  }
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}

class _UserListState extends State<UserList> {
  List<User> data = [
    User('张三', 12),
    User('李四', 18),
    User('王五', 20, selected: true),
    User('王五1', 22),
    User('王32五', 19),
    User('王3五', 22, selected: true),
  ];

  var isAscending = true;

  List<DataRow> _getRows() {
    List<DataRow> rows = [];
    for (var item in data) {
      rows.add(
        DataRow(
          selected: item.selected,
          onSelectChanged: (e) {
            setState(() {
              item.selected = e!;
            });
          },
          cells: [
            DataCell(Text(item.name)),
            DataCell(Text('${item.age}')),
            // DataCell(Text('110')),
          ],
        ),
      );
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: isAscending,
          columns: [
            DataColumn(label: Text('姓名')),
            DataColumn(
                label: Text('年龄'),
                numeric: true,
                onSort: (int columnIndex, bool ascending) {
                  isAscending = ascending;
                  setState(() {
                    if (ascending) {
                      data.sort((a, b) => a.age - b.age);
                    } else {
                      data.sort((a, b) => b.age - a.age);
                    }
                  });
                }),
            // DataColumn(label: Text('性别')),
            // DataColumn(label: Text('手机号')),
            // DataColumn(label: Text('简介')),
            // DataColumn(label: Text('法系车')),
            // DataColumn(label: Text('法系车')),
            // DataColumn(label: Text('法系车')),
          ],
          rows: _getRows(),
        ),
      ),
    );
  }
}
