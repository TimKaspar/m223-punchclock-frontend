import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EntryMenu extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Entry',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
