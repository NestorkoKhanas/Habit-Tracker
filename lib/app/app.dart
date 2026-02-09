import 'package:flutter/material.dart';
import 'package:habit_tracker/core/theme/theme_app.dart';
import 'package:habit_tracker/features/habits/ui/screens/habit_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.lightTheme,
      home: HabitScreen(),
    );
  }
}