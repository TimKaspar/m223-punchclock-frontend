import 'package:flutter/material.dart';
import 'Entry/create.dart';
import 'Entry/delete.dart';
import 'Entry/get.dart';
import 'Entry/put.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Future entries = getAllEntries();
                    print(entries);
                  },
                  child: const Text('Get all'))),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'get');
                },
                child: const Text('Get')),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'delete');
                },
                child: const Text('Delete')),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'create');
                },
                child: const Text('Create')),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'put');
                },
                child: const Text('Put')),
          ),
        ],
      ),
    ));
  }
}

Future<http.Response> getAllEntries() async {
  return await http.get(Uri.parse("http://localhost:8080/entries"));
}
