import 'package:flutter/material.dart';
import 'package:habit_tracker/core/theme/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: lightBlueGrey,
        onPressed: () {},
        child: Icon(Icons.add, color: lightTextColor),
      ),
      backgroundColor: deepestIndigo,
      appBar: AppBar(
        title: Text("Habit Tracker", style: TextStyle(color: lightTextColor)),
        elevation: 5,
        centerTitle: true,
        backgroundColor: deepestIndigo,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            height: 60,
            child: Card(
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
      ),
    );
  }
}
