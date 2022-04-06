// Lista com os blocos de butões

import 'package:flutter/material.dart';
import 'package:calendar_brasa_connect/initiatives.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarInitiatives extends StatefulWidget {
  const CalendarInitiatives({Key? key}) : super(key: key);

  @override
  State<CalendarInitiatives> createState() => _CalendarInitiativesState();
}

class _CalendarInitiativesState extends State<CalendarInitiatives> {
  MeetingDataSource? _dataSource;
  String? _subjectText = "";

  @override
  void initState() {
    _dataSource = MeetingDataSource(getAppointments());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.week,
        firstDayOfWeek: 5,
        minDate: DateTime(2022, 04, 15, 09, 00),
        maxDate: DateTime(2022, 04, 16, 19, 00),
        //initialDisplayDate: DateTime(2022, 04, 15, 09, 00),
        //initialSelectedDate: DateTime(2022, 04, 15, 09, 00),
        dataSource: _dataSource,
        onTap: calendarTapped,
      ),
    );
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime firstDate = DateTime(2022, 04, 15);
  final DateTime secondDate = DateTime(2022, 04, 16);
  final DateTime startTime1 =
      DateTime(firstDate.year, firstDate.month, firstDate.day, 9, 0, 0);
  final DateTime endTime1 = startTime1.add(const Duration(hours: 2));

  final DateTime startTime2 =
      DateTime(secondDate.year, secondDate.month, secondDate.day, 9, 0, 0);
  final DateTime endTime2 =
      startTime2.add(const Duration(hours: 2, minutes: 30));

  final Appointment event1 = Appointment(
      startTime: startTime1,
      endTime: endTime1,
      subject: "Workshop 1",
      color: Colors.blue);

  meetings.add(event1);

  final Appointment event2 = Appointment(
      startTime: startTime2,
      endTime: endTime2,
      subject: "Workshop 2",
      color: Colors.red);

  meetings.add(event2);

  final Appointment event3 = Appointment(
      startTime: startTime1,
      endTime: startTime1.add(const Duration(hours: 3)),
      subject: "Workshop 3",
      color: Colors.black);

  meetings.add(event3);

  final Appointment event4 = Appointment(
      startTime: DateTime(2022, 4, 15, 9, 15),
      endTime: startTime1.add(const Duration(hours: 1, minutes: 30)),
      subject: "Workshop 4",
      color: Colors.green);

  meetings.add(event4);

  return meetings;
}

void calendarTapped(CalendarTapDetails details) {
  if (details.targetElement == CalendarElement.appointment ||
      details.targetElement == CalendarElement.agenda) {
    final Appointment _meeting = details.appointments![0];

    _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Container(child: new Text('Detalhes do Evento:')),
            content: Text(_meeting.subject),
            actions: <Widget>[
              new TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text('close'))
            ],
          );
        },
      );
    }
  }
}
