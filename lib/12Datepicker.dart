import 'package:flutter/material.dart';

class Datepickerwidget extends StatefulWidget {
  const Datepickerwidget({super.key});

  @override
  State<Datepickerwidget> createState() {
    return _DatepickerwidgetState();
  }
}

class _DatepickerwidgetState extends State<Datepickerwidget> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${selectDate.day}-${selectDate.month}-${selectDate.year}'),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));
                  if (dateTime != null) {
                    setState(() {
                      selectDate = dateTime;
                    });
                  }
                },
                child: Text('choose date'))
          ],
        ),
      ),
    );
  }
}
