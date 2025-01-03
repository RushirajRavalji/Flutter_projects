import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Category { food, travel, leisure, work }

class ModelExpense {
  ModelExpense({
    required this.amount,
    required this.title,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id; // Changed from int to String
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
