import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: const Color(0xff8b0000),
        title: const Text(
          'Hola',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.5,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
            backgroundColor: Colors.amberAccent,
            decoration: TextDecoration.underline,
          ),
          // ignore: deprecated_member_use
          textScaleFactor: 1,
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
