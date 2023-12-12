import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});

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
      body: Container(
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.amber,
        ),
        margin: const EdgeInsets.all(30),
        //padding: const EdgeInsets.all(30),
        //color: const Color.fromARGB(255, 23, 23, 23),
        height: 200,
        width: double.infinity,
        child: Center(
          child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 20,
                    //offset: Offset(5, 5),
                  ),
                ],
              ),
              child: const Text('Este es un container')),
        ),
      ),
    );
  }
}
