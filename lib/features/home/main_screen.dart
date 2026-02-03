import 'package:flutter/material.dart';
import 'package:habit_tracker/core/theme/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _items = [];
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: lightBlueGrey,
        onPressed: () {
          setState(() {
            _items.add(_count);
            _count++;
          });
        },
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
          itemCount: _items.length,
          itemBuilder: (context, index) => SizedBox(
            height: 70,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              color: warmPink,
              child: Dismissible(
                direction: DismissDirection.endToStart,
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                key: ValueKey(_items[index]),
                onDismissed: (direction) {
                  setState(() {
                    _items.removeAt(index);
                  });
                },
                child: ListTile(
                  title: Text(
                    "Item ${_items[index]}",
                    style: TextStyle(color: darkTextColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
