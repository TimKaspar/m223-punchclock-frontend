import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserManagment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
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
                    onPressed: () {},
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
    );
  }
}
