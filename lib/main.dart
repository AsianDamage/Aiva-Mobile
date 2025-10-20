import 'package:flutter/material.dart';
import 'pages/checkin.dart';
import 'pages/crisis_help.dart';
import 'pages/home_page.dart';
//import 'pages/questionnaire.dart';
//import 'pages/result.dart';
import 'pages/trends.dart';
import 'theme.dart';

void main() {
  runApp(MoodTrackerApp());
}

class MoodTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Tracker',
      theme: appTheme,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePageWidget(), // HomePageWidget -> HomePage
        '/check-in': (context) =>
            CheckInWidget(), // CheckInWidget -> CheckInPage
        //'/questions': (context) => Questions(),
        //'/result': (context) => ResultPage(),
        '/trends': (context) => TrendsWidget(),
        '/crisis': (context) => CrisisHelpWidget(),
      },
    );
  }
}
