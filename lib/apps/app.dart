import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom.dart';
import 'package:ticket_booking_app/utils/styles.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const Bottom(),
      debugShowCheckedModeBanner: false,
    );
  }
}