import 'package:calendar_brasa_connect/calendar_page.dart';
import 'package:calendar_brasa_connect/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:calendar_brasa_connect/calendar_date_selector.dart';
import 'package:calendar_brasa_connect/calendar_initiatives.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MaterialApp(
    /*localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('pt', 'BR'),
    ],
    locale: const Locale('pt', 'BR'), */
    //home: CalendarInitiatives(),
    home: QuestionsPage(),
  ));
}
