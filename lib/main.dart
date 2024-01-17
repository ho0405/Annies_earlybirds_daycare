import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/enrollment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/enrollmentpage': (context) => const EnrollmentPage(),
      },
    );
  }
}
