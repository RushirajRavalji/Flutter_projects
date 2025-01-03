import 'package:_3_expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:_3_expense_tracker/models/model_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<ModelExpense> _registeredExpenses = [
    ModelExpense(
      title: 'Fuel',
      amount: 500,
      date: DateTime.now(),
      category: Category.travel,
    ),
    ModelExpense(
      title: 'Dinner',
      amount: 1500,
      date: DateTime.now(),
      category: Category.food,
    ),
    ModelExpense(
      title: 'Flutter Course',
      amount: 550,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("C H A R T S"),
            Expanded(child: ExpensesList(expenses: _registeredExpenses))
          ],
        ),
      ),
    );
  }
}
