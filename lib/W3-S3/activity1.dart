import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {

  final  String label ;
  const MyWidget(this.label,{super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
 final String label;

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
              borderRadius: BorderRadius.circular(30)),
          child: Text(label,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ) ;
  }
}
void main() {
  runApp(MaterialApp(
    home: Column(
      children: [

        MyWidget("ahgdfhdsjg"),
          MyWidget("ahgdfhdsjg"),
            MyWidget("ahgdfhdsjg"),
        

      ],
    ),
  ));
}
