import 'package:deckademics/Instructor_Side_Screens/login_screen/log_in_screen.dart';
import 'package:deckademics/student_side_screen/log_in_std/log_in_screen_std.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home:
        LoginScreen(),
    );
  }
}
