import 'package:flutter/material.dart';
import 'package:_3_expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(36, 255, 255, 255),
      elevation: 0,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9.0),
            child: Column(
              children: [
                Text(expense.title),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(categoryIcons[expense.category]),
                        const SizedBox(width: 8),
                        Text(expense.formattedDate),
                      ],
                    ),
                    const Spacer(),
                    Text('₹${expense.amount.toStringAsFixed(2)}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
