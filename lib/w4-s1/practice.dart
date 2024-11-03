import 'package:flutter/material.dart';

import 'practice2.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      color: const Color.fromARGB(255, 222, 188, 188),
      padding: const EdgeInsets.all(100),   
    child: Center(
      child: Column(
            children: [
              CustomCard(text: "Hello1", color: const Color.fromARGB(255, 158, 9, 111)),
              CustomCard(text: "Hello2", color: const Color.fromARGB(255, 187, 18, 111)),
              CustomCard(text: "Hello3", gradientColors: [const Color.fromARGB(255, 186, 63, 178)!, const Color.fromARGB(255, 210, 119, 213)!],) ,
              CustomCard(text: "Hello4", gradientColors: [Colors.pink[100]!, Colors.pink[900]!],) , 
            ],
          ),
        ),
 
      )
        
      ),
    );
}

