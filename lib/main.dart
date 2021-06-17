import 'package:bmi_calculator/screen/results.dart';
import 'package:flutter/material.dart';
import 'screen/welocome.dart';
import 'screen/input_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(
    MaterialApp(
      home: WelcomeScreen(),
      routes: {
        '/first': (context) => Inputpage(),
        '/second': (context) => Result(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
       // accentColor: Color(0xFFeb1555),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
    ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

