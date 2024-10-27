import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 161, 161),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 96, 96, 97),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Center(
                    child: Text(
                      'OOP',
                      style: TextStyle(
                        color: Color.fromARGB(255, 86, 58, 58),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 41, 137, 216),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Center(
                    child: Text(
                      'DART',
                      style: TextStyle(
                        color: Color.fromARGB(255, 184, 100, 100),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [const Color.fromARGB(255, 214, 218, 222)!, const Color.fromARGB(255, 201, 43, 143)!],
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
                        color: Color.fromARGB(255, 23, 23, 23),
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
      ),
    );
  }
}
