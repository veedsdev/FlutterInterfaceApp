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
        body: const Cuadro(
          color: Colors.red,
          child: Center(
            child: Image(
              image: AssetImage('assets/images/imagen1.jpg'),
              width: 300,
              height: 300,
            ),
          ),
        ));
  }
}

class Cuadro extends StatelessWidget {
  //final EdgeInsetsGeometry? padding;
  final Color? color;
  final Widget? child;
  const Cuadro({super.key, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: color,
      child: child,
    );
  }
}
