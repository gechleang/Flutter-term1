import 'package:flutter/material.dart';
import 'package:test1/w9/1-Start%20Code/1-Start%20Code/models/expense.dart';
import '../../models/expense.dart';
import 'expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => ExpenseItem(expenses[index]),
      ),
    );
  }
}