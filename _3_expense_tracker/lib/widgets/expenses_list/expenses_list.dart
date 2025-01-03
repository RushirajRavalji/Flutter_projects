import 'package:_3_expense_tracker/models/model_expense.dart';
import 'package:_3_expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<ModelExpense> expenses;

  @override
  Widget build(BuildContext context) {
    return
        // ListView.builder(
        //   itemCount: expenses.length,
        //   itemBuilder: (ctx, index) => Text(expenses[index].title),
        // );
        ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (ctx, index) =>
                ExpenseItem(modelExpense: expenses[index]));
  }
}
