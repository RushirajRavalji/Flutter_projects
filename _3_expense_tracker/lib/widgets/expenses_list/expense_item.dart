import 'package:flutter/material.dart';
import 'package:_3_expense_tracker/models/model_expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.modelExpense});

  final ModelExpense modelExpense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
              children: [
                Text(modelExpense.title),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.cloud_circle),
                        const SizedBox(width: 8),
                        Text(
                          modelExpense.date.toString(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text('₹${modelExpense.amount.toStringAsFixed(2)}'),
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
