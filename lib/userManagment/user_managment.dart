import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserManagment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8.0,
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              title: Row(
                children: <Widget>[
                  Text('Username'),
                  Text(' '),
                  Text('Password'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.pushNamed(context, 'editUser');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {Navigator.pushNamed(context, 'loginMenu');},
      ),
    );
  }
}
