import 'package:flutter/material.dart';
import 'package:m223_ui/Entry/entry_menu.dart';

import 'Entry/create.dart';
import 'Entry/delete.dart';
import 'Entry/get.dart';
import 'Entry/put.dart';
import 'login/login_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginMenu(),
      routes: {
        'get': (context) => GetEntry(),
        'create': (context) => CreateEntry(),
        'delete': (context) => DeleteEntry(),
        'put': (context) => PutEntry(),
        'entryMenu' : (context) => EntryMenu(),
      },
    );
  }
}
