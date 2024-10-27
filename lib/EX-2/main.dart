import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 25, 150)
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 165, 218),
          borderRadius: BorderRadius.circular(15)        ),
        child: Text("Cambodia Academy of Digital Technology"),
      )
     ),
  ));
}
