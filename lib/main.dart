import 'package:flutter/material.dart';
import 'Entry/create.dart';
import 'Entry/delete.dart';
import 'Entry/get.dart';
import 'Entry/menu.dart';
import 'Entry/put.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        'get': (context) => GetEntry(),
        'create': (context) => CreateEntry(),
        'delete': (context) => DeleteEntry(),
        'put': (context) => PutEntry(),
      },
    );
  }
}
