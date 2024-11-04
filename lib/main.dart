import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu_screen.dart';
import 'screens/menu_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detecção de Ameaças',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MenuScreen(),
    );
  }
}
