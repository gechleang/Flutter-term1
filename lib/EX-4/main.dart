import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CADT'),
        backgroundColor: const Color.fromARGB(255, 215, 117, 182),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First button
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 90, 7, 108),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                margin: const EdgeInsets.only(bottom: 20),
                child: const Center(
                  child: Text(
                    'OOP',
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 12, 12),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Second button
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 234, 236),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                margin: const EdgeInsets.only(bottom: 20),
                child: const Center(
                  child: Text(
                    'DART',
                    style: TextStyle(
                      color: Color.fromARGB(255, 121, 4, 239),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Third button with gradient
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color.fromARGB(255, 14, 120, 208)!, Colors.blue[600]!],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Center(
                  child: Text(
                    'FLUTTER',
                    style: TextStyle(
                      color: Color.fromARGB(255, 110, 5, 80),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MyWidget(),
  ));
}
