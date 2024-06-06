import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker Demo'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              child: Text("DATE PICKER MATERIAL"),
              onPressed: () async {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
              }),
          CupertinoButton(
            child: Text("DATE PICKER CUPERTINO"),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime.now(),
                      minimumDate: DateTime(2000),
                      maximumDate: DateTime(2101),
                      onDateTimeChanged: (DateTime newDate) {
                        // Aquí puedes manejar la fecha seleccionada si lo deseas
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      )),
    );
  }
}
