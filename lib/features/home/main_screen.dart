import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Habit Tracker"), centerTitle: true),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) =>
              Card(child: Center(child: Text("Item $index"))),
        ),
      ),
    );
  }
}
