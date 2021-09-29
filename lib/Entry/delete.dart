import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteEntry extends StatelessWidget {
  late final TextEditingController _controller1 = TextEditingController();

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
          Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
        const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(
              'Delete with ID',
              style: TextStyle(fontSize: 40),
            )),
        Center(
          child: Form(
            key: _form,
            child: SizedBox(
              width: 700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _controller1,
                    decoration: const InputDecoration(labelText: 'ID'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('back'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {
                              //TODO delete entry from DB
                              Navigator.pop(context);
                            },
                            child: const Text('Delete')),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
