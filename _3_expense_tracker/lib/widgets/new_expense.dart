import 'package:flutter/material.dart';
// Import the Flutter Material Design package for building UI elements

import 'package:_3_expense_tracker/models/expense.dart';
// Import a custom model for handling expense data (e.g., Category)

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
  // Define a StatefulWidget to create the NewExpense form page

  @override
  State<NewExpense> createState() => _NewExpenseState();
  // Create the state for this StatefulWidget (manages the state of the form)
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  // Controller for the "Title" text field to manage text input

  final _amountController = TextEditingController();
  // Controller for the "Amount" text field to manage text input

  DateTime? _selectedDate;
  // Store the selected date for the expense

  Category? _selectedCategory;
  // Store the selected category for the expense

  String? _titleError;
  String? _amountError;
  String? _dateError;
  String? _categoryError;
  // Error message variables for each field. If the field is empty, an error message will be set

  @override
  void dispose() {
    _titleController.dispose();
    // Dispose the title controller to free up memory

    _amountController.dispose();
    // Dispose the amount controller to free up memory

    super.dispose();
  }

  Future<void> _presentDatePicker() async {
    // Function to display a date picker to choose the date
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        _dateError = null; // Clear the date error if a date is selected
      });
    }
  }

  void _validateForm() {
    // Validate the form fields and set error messages if any field is empty
    setState(() {
      _titleError = _titleController.text.isEmpty ? 'Title is required' : null;
      _amountError =
          _amountController.text.isEmpty ? 'Amount is required' : null;
      _dateError = _selectedDate == null ? 'Date is required' : null;
      _categoryError =
          _selectedCategory == null ? 'Category is required' : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    // The main UI layout for the NewExpense screen
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Expense',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[300],
        // Set up the app bar with the title 'New Expense'
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Color.fromARGB(168, 0, 0, 0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(105, 112, 112, 112),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Add New Expense',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _titleController,
                        maxLength: 50,
                        decoration: InputDecoration(
                          labelText: 'Title',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      if (_titleError != null)
                        Text(
                          _titleError!,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      // Create the "Title" field with error display if applicable
                      const SizedBox(height: 16),
                      TextField(
                        controller: _amountController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Enter Amount',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      if (_amountError != null)
                        Text(
                          _amountError!,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      // Create the "Amount" field with error display if applicable
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: _presentDatePicker,
                            icon: const Icon(
                              Icons.calendar_today,
                              color: Colors.black,
                            ),
                            label: Text(
                              _selectedDate == null
                                  ? 'Choose Date'
                                  : '${_selectedDate!.toLocal()}'.split(' ')[0],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 35),
                          DropdownButton<Category>(
                            value: _selectedCategory,
                            hint: const Text(
                              'Select Category',
                              style: TextStyle(color: Colors.black),
                            ),
                            items: Category.values.map((Category category) {
                              return DropdownMenuItem<Category>(
                                value: category,
                                child: Text(category.name),
                              );
                            }).toList(),
                            onChanged: (Category? value) {
                              setState(() {
                                _selectedCategory = value;
                                _categoryError =
                                    null; // Clear error when category is selected
                              });
                            },
                          ),
                        ],
                      ),
                      if (_categoryError != null)
                        Text(
                          _categoryError!,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      if (_dateError != null)
                        Text(
                          _dateError!,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      // Create the "Date" and "Category" fields with error messages displayed if applicable
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 20),
                            ),
                            onPressed: () {
                              _validateForm();
                              // Call the form validation function
                              if (_titleError == null &&
                                  _amountError == null &&
                                  _dateError == null &&
                                  _categoryError == null) {
                                // If no errors, print the input values
                                print('Title: ${_titleController.text}');
                                print('Amount: ${_amountController.text}');
                                print(
                                    'Date: ${_selectedDate?.toLocal().toString().split(' ')[0] ?? 'No Date Selected'}');
                                print(
                                    'Category: ${_selectedCategory?.name ?? 'No Category Selected'}');
                              }
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
