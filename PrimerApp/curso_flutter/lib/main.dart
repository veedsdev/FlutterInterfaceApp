//import 'package:curso_flutter/widgets/widget_container.dart';
//import 'package:curso_flutter/widgets/widget_image.dart';
//import 'package:curso_flutter/widgets/widget_scaffold.dart';
//import 'package:curso_flutter/widgets/widget_text.dart';
//import 'package:curso_flutter/widgets/widget_icon.dart';
import 'package:curso_flutter/screens/profile_screen.dart';
import 'package:curso_flutter/widgets/widget_image_center.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}
