import 'package:flutter/material.dart';
import 'Entry/create.dart';
import 'Entry/delete.dart';
import 'Entry/get.dart';
import 'Entry/put.dart';
import 'package:http/http.dart' as http;

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

class MyHomePage extends StatelessWidget {

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(
              'Entry',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () {
                          Future entries = getAllEntries();
                          print(entries);
                        },
                        child: Text('Get all'))),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'get');
                      },
                      child: Text('Get')),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'delete');
                      },
                      child: Text('Delete')),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'create');
                      },
                      child: Text('Create')),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'put');
                      },
                      child: Text('Put')),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: textEditingController,
                    maxLines: null,
                    minLines: 6,
                    keyboardType: TextInputType.multiline,
                    enabled: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<http.Response> getAllEntries() async {
  return await http.get(Uri.parse("http://localhost:8080/entries"));
}
