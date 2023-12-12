import 'package:flutter/material.dart';

class WidgetIcon extends StatelessWidget {
  const WidgetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: const Color(0xff8b0000),
        title: const Text('Widget Scaffold'),
        actions: const [
          Icon(Icons.add_home),
          Icon(Icons.search),
          //ImageIcon(image) Widget para iconos mediante un asset
        ],
      ),
      body: Opacity(
        opacity: 0.5,
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: const Image(
            image: NetworkImage(
                'https://www.educima.com/imagen-lapiz-dl22715.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
