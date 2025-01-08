import 'package:_3_expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:_3_expense_tracker/models/expense.dart';
import 'package:_3_expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Fuel',
      amount: 500,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Dinner',
      amount: 1500,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Flutter Course',
      amount: 550,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Color.fromARGB(168, 0, 0, 0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              actions: [
                IconButton(
                  onPressed: _openAddExpenseOverlay,
                  icon: Icon(Icons.add),
                ),
              ],
              title: const Text(
                'Expensoo',
                style: TextStyle(),
              ),
              backgroundColor: const Color.fromARGB(36, 255, 255, 255),
            ),
            const SizedBox(height: 8),
            const Text("E X P E N S E S"),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
        ),
      ),
    );
  }
}
