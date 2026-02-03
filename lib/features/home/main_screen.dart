import 'package:flutter/material.dart';
import 'package:habit_tracker/core/theme/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      backgroundColor: deepestIndigo,
      appBar: AppBar(
        title: Text("Habit Tracker", style: TextStyle(color: lightTextColor)),
        centerTitle: true,
        backgroundColor: deepestIndigo,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            color: warmPink,

            child: Center(
              child: Text(
                "Item $index",
                style: TextStyle(color: darkTextColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
