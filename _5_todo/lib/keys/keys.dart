// Importing the Material Design library from Flutter to use widgets and themes.
import 'package:flutter/material.dart';
// Importing the CheckableTodoItem widget from checkable_todo_item.dart for use in this file.
import 'package:flutter_internals/keys/checkable_todo_item.dart';

// Purpose:
// The keys.dart file defines the core functionality of the to-do list. It handles:
// - Displaying the list of to-dos.
// - Sorting the list dynamically based on user interaction.
// - Managing the app's state (sorting order).

// Todo Class:
// Represents the data structure for a single to-do item.
// - text: The task description.
// - priority: The task's importance (urgent, normal, or low).

class Todo {
  const Todo(this.text, this.priority);
  final String text; // The description of the to-do item.
  final Priority
      priority; // The priority of the to-do item (e.g., urgent, normal, low).
}

// Keys Widget:
// A StatefulWidget responsible for managing the to-do list logic.
// - Maintains the sorting order (_order) and a predefined list of Todo objects (_todos).

class Keys extends StatefulWidget {
  const Keys({super.key});

  @override
  State<Keys> createState() {
    return _KeysState();
  }
}

class _KeysState extends State<Keys> {
  var _order = 'asc'; // The sorting order of the to-do list.
  final _todos = [
    const Todo('Learn Flutter', Priority.urgent),
    const Todo('Practice Flutter', Priority.normal),
    const Todo('Explore other courses', Priority.low),
  ];

  // Sorting Logic:
  // - _orderedTodos computes a sorted list dynamically based on _order.
  List<Todo> get _orderedTodos {
    final sortedTodos = List.of(_todos);
    sortedTodos.sort((a, b) {
      final bComesAfterA = a.text.compareTo(b.text);
      return _order == 'asc' ? bComesAfterA : -bComesAfterA;
    });
    return sortedTodos;
  }

  // Method to toggle the sorting order.
  void _changeOrder() {
    setState(() {
      _order = _order == 'asc' ? 'desc' : 'asc';
    });
  }

  @override
  Widget build(BuildContext context) {
    // UI Components:
    // - Sort Button: Toggles sorting order.
    // - To-Do List: Iterates over _orderedTodos and displays CheckableTodoItem widgets.
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            onPressed: _changeOrder,
            icon: Icon(
                _order == 'asc' ? Icons.arrow_downward : Icons.arrow_upward),
            label: Text('Sort ${_order == 'asc' ? 'Descending' : 'Ascending'}'),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              for (final todo in _orderedTodos)
                CheckableTodoItem(
                  key: ValueKey(todo.text),
                  todo.text,
                  todo.priority,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

// Flow Summary:
// - Initialization:
//   - _todos contains a predefined list of tasks.
//   - _order defaults to "asc".
// - Sorting:
//   - _orderedTodos dynamically sorts the list based on _order.
// - UI:
//   - A button toggles the sorting order.
//   - The sorted to-do list is displayed using CheckableTodoItem widgets.
