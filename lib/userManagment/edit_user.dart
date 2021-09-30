import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditUser extends StatelessWidget {
  late final TextEditingController _controller1 = TextEditingController();
  late final TextEditingController _controller2 = TextEditingController();

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Form(
          key: _form,
          child: SizedBox(
            width: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _controller1,
                  decoration: const InputDecoration(labelText: 'Username'),
                ),
                TextFormField(
                  controller: _controller2,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
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
                            Navigator.pushNamed(context, 'userManagment');
                          },
                          child: const Text('Edit')),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
