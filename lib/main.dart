// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import '01_Basic/Hello.dart';
// import '01_layout/01_Container.dart';
// import '01_layout/02_Column_Row.dart';
// import '01_layout/03_Flex.dart';
// import '01_layout/04_Wrap.dart';
// import '01_layout/05_Stack.dart';
// import '01_layout/06_Card.dart';
// import '02_button/01_Button.dart';
// import '03_image/01_Image.dart';
// import '04_list/01_SingleChildScrollView.dart';
// import '04_list/02_ListView.dart';
// import '04_list/03_GridView.dart';
// import '04_list/04_GridView.dart';
// import '05_thirdParty/01_dio.dart';
// import '06_state/01_StatefulWidget.dart';
// import '06_state/02_DataTable.dart';
// import '07_navigation/01_Anonymous.dart';
import '07_navigation/00_UnkownPage.dart';
// import '07_navigation/02_NamedRoute.dart';
import '07_navigation/03_GenarateRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   'home': (context) => HomePage(),
      //   'product': (context) => Product(),
      // },
      // initialRoute: '/',
      // onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
      //   builder: (context) => UnkownPage(),
      // ),
      onGenerateRoute: (RouteSettings settings) {
        print('当前路径：${settings.name}');
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => Home());
        }

        if (settings.name == '/product') {
          return MaterialPageRoute(builder: (context) => Product());
        }

        var uri = Uri.parse(settings.name ?? '');
        print(uri.pathSegments);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'product') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(builder: (context) => ProductDetail(id: id));
        }
        return MaterialPageRoute(builder: (context) => UnkownPage());
      },
      title: '哈哈哈哈',
      home: Home(),
    );
  }
}
