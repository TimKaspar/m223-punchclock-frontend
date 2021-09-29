import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PutEntry extends StatelessWidget {
  late final TextEditingController _controller1 =
      TextEditingController(text: DateTime.now().toString());
  late final TextEditingController _controller2 =
      TextEditingController(text: DateTime.now().toString());

  var _checkIn;
  var _checkOut;

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
          Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
        const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(
              'Put Entry',
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
                  DateTimePicker(
                    type: DateTimePickerType.dateTimeSeparate,
                    dateMask: 'd MMMM yyyy - hh:mm',
                    use24HourFormat: true,
                    controller: _controller1,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Check In Date',
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => _checkIn = val,
                  ),
                  DateTimePicker(
                    type: DateTimePickerType.dateTimeSeparate,
                    dateMask: 'd MMMM yyyy - hh:mm',
                    use24HourFormat: true,
                    controller: _controller2,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Check Out Date',
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => _checkOut = val,
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
                              //TODO get Entry and put the edited Entry back in DB
                              Navigator.pop(context);
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
      ]),
    );
  }
}
