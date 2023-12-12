import 'package:flutter/material.dart';

class WidgetScaffold extends StatelessWidget {
  const WidgetScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: const Color(0xff8b0000),
        title: const Text('Widget Scaffold'),
        actions: [
          const Text('Hola'),
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
