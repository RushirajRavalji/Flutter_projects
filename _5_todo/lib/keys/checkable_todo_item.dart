// Importing the Material Design library from Flutter for widgets and themes.
import 'package:flutter/material.dart';

// Purpose:
// The checkable_todo_item.dart file defines the presentation of individual to-do items. It includes:
// - Displaying the text and priority of a task.
// - Allowing the user to mark a task as "done" using a checkbox.

enum Priority { urgent, normal, low } // Enum representing priority levels.

class CheckableTodoItem extends StatefulWidget {
  const CheckableTodoItem(this.text, this.priority, {super.key});
  final String text; // Task description.
  final Priority priority; // Task priority (urgent, normal, or low).

  @override
  State<CheckableTodoItem> createState() => _CheckableTodoItemState();
}

class _CheckableTodoItemState extends State<CheckableTodoItem> {
  var _done = false; // Tracks whether the to-do item is marked as "done".

  void _setDone(bool? isChecked) {
    setState(() {
      _done = isChecked ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icon = Icons.low_priority;
    if (widget.priority == Priority.urgent)
      icon = Icons.notifications_active;
    else if (widget.priority == Priority.normal) icon = Icons.list;

    // Layout for a single to-do item.
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: _done, onChanged: _setDone),
          const SizedBox(width: 6),
          Icon(icon),
          const SizedBox(width: 12),
          Text(widget.text),
        ],
      ),
    );
  }
}

// Flow Summary:
// - Initialization:
//   - Widget is initialized with text and priority.
//   - _done state defaults to false.
// - State Update:
//   - _setDone toggles the _done state.
// - UI:
//   - Displays a checkbox, icon, and text in a row.
//   - Updates dynamically based on the _done state and priority.
