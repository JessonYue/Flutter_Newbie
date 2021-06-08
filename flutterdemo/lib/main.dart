import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterdemo/Container.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                  title: Text('this is flutter demo'),
                ),
                body: Center(
                    child: Container(
                  child: Image.network(
                      "https://wx.qlogo.cn/mmopen/Q3auHgzwzM47Qm1bDgwvPicSHlwRZm4zcphCyrD0qoD0araxh6xmq5wgnWl12Uc7HAkE6IPBNEtdnsh4vjLe9as09UjNw6Z0cGRONJEObw9M/0"),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.blue),
                  alignment: Alignment.center,
                )))));
  }
}
