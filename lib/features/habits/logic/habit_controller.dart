import 'package:habit_tracker/features/habits/data/models/habit.dart';

class HabitController {
  final List<Habit> _habits = [];
  final Habit habit;
  HabitController(this.habit);
  List<Habit> get habits => List.unmodifiable(_habits);

  void addHabit(Habit habit) {
    _habits.add(habit);
  }

  void removeHabit(Habit habit) {
    _habits.remove(habit);
  }

  void updateHabit(Habit oldHabit, Habit newHabit) {
    final index = _habits.indexOf(oldHabit);
    if (index != -1) {
      _habits[index] = newHabit;
    }
  }
}
