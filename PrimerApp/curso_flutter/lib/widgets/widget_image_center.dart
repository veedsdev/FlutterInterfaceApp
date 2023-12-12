import 'package:flutter/material.dart';

class WidgetImageCenter extends StatelessWidget {
  const WidgetImageCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: const Color(0xff8b0000),
        title: const Text('Mi primer pantalla'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
          ),
          child: Container(
            // width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow, width: 5),
            ),
            child: Container(
              // width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 5),
              ),
              child: const Image(
                image: NetworkImage(
                    'https://1.bp.blogspot.com/-WboSNJbj5Rw/UPlWytln02I/AAAAAAAABMM/0XnLFjPm9MU/s1600/Harry-Potter-Pics-harry-potter-7692816-1920-2560%5B1%5D.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
