import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // Method 1: Loop in Array
            Label("Method 1: Loop in Array", bold: true),
            Column(
              children: [
                for (var color in colors)
                  Label(color), 
              ],
            ),

            
            Label("Method 2: Map", bold: true),
            Column(
              children: [
                ...colors.map((item) => Label(item)).toList(),
              ],
            ),
            Label("Method 3: Dedicated Function", bold: true),
            Column(
              children: [
                ...getLabels(), // Using a separate function to generate widgets
              ],
            ),

            // Additional: Combined Demonstration
            Label("Combined Demonstration", bold: true),
            Column(
              children: [
                for (var color in colors)
                  Label(color), // Using for-in loop
                ...colors.map((item) => Label(item)).toList(), // Using map
                ...getLabels(), // Using a function
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}

List<Widget> getLabels() {
  return colors.map((item) => Label(item)).toList();
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
