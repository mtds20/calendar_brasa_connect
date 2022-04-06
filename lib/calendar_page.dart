
// Tem tudo junto (main)


import 'package:flutter/material.dart';
import 'package:calendar_brasa_connect/calendar_date_selector.dart';
import 'package:calendar_brasa_connect/calendar_initiatives.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //DateSelector(),
          CalendarInitiatives(),
        ]),
    );
  }
}
