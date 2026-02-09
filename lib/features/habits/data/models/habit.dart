import 'package:habit_tracker/features/habits/data/models/habit_status.dart';

class Habit {
  final String _title;
  final String _description;
  final DateTime _createdAt;
  final HabitStatus _status;
  Habit({
    required String title,
    required String description,
    required DateTime createdAt,
  }) : _title = _validateTitle(title),
       _description = description,
       _createdAt = createdAt,
       _status = HabitStatus.created;

  String get title => _title;
  String get description => _description;
  DateTime get createdAt => _createdAt;
  HabitStatus get status => _status;

  static String _validateTitle(String title) {
    if (title.length > 50 || title.trim().isEmpty) {
      throw ArgumentError('Title cannot be empty or exceed 50 characters');
    }
    return title;
  }
}
