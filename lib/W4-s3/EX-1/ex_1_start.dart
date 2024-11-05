import 'package:flutter/material.dart';

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;

  void _toggleSelection1() {
    setState(() {
      _isSelected1 = !_isSelected1;
    });
  }

  void _toggleSelection2() {
    setState(() {
      _isSelected2 = !_isSelected2;
    });
  }

  void _toggleSelection3() {
    setState(() {
      _isSelected3 = !_isSelected3;
    });
  }

  void _toggleSelection4() {
    setState(() {
      _isSelected4 = !_isSelected4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _toggleSelection1,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: _isSelected1 ? Colors.blue[500] : Colors.blue[50],
            ),
            child: Text(
              _isSelected1 ? 'Selected' : 'Not Selected',
              style: TextStyle(color: _isSelected1 ? Colors.white : Colors.black),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleSelection2,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: _isSelected2 ? Colors.blue[500] : Colors.blue[50],
            ),
            child: Text(
              _isSelected2 ? 'Selected' : 'Not Selected',
              style: TextStyle(color: _isSelected2 ? Colors.white : Colors.black),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleSelection3,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: _isSelected3 ? Colors.blue[500] : Colors.blue[50],
            ),
            child: Text(
              _isSelected3 ? 'Selected' : 'Not Selected',
              style: TextStyle(color: _isSelected3 ? Colors.white : Colors.black),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleSelection4,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: _isSelected4 ? Colors.blue[500] : Colors.blue[50],
            ),
            child: Text(
              _isSelected4 ? 'Selected' : 'Not Selected',
              style: TextStyle(color: _isSelected4 ? Colors.white : Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Statefullwidget-Button'),
    ),
    body: Center(
      child: SelectableButton(),
    ),
  ),
));