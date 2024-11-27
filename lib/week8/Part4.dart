import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package for date formatting.

class ExpenseItem extends StatelessWidget{
final String title;
final double amount;
final DateTime date;
final IconData icon;

ExpenseItem({
required this.title,
required this.amount,
required this.date,
required this.icon,
});

@override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Row(children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,

              ),
            ),
            sizeBox(height:5),
            Text(
              
            )
          ]
        )
      ])
    )
    
  }
}