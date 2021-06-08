import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组建
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutterdemo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primaryColor: Colors.yellowAccent),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Container(
      child: Text('测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试',
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 16,
              color: Colors.greenAccent,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.red,
              decorationThickness: 0.5)),
    ));
  }
}
